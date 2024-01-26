<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\Shipping;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Notifications\Orderconfirmemail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class OrderController extends Controller
{
    public function email(){

        $user = Auth::user();
  
        $Orderdetail = Session::get('Orderdetail');
  
        $Ordernumber = $Orderdetail['Ordernumber'];

        $Orderid = $Orderdetail['Orderid'];

        $shipid = $Orderdetail['Shipid'];
  
        $button =  $Orderdetail['button'];
  
        $url =  $Orderdetail['url'];
  
        Session::forget('Orderdetail');
  
        $customerid = User::find($user->id);
  
        $details = [
          'greeting' => 'Hello Customer',
          'firstline' => 'Welcome To Gion Ecommerce Site',
          'body' => 'The Order number is down below  used as transaction reference for all products  you order and you are asked while delivery You can get the QR code using the link Provided',
          'Ordernumber' =>  $Ordernumber,
          'Orderid' =>  $Orderid,
          'button' => $button,
          'url' => $url,
          'lastline' => 'Have a great time!!',
       ];

      //  Notification::send($customerid, new Orderconfirmemail($details));//find email from the user table and send to that specific user 
      try {
        Notification::send($customerid, new Orderconfirmemail($details));

        Session::put('paysuccess', 'Payment Successful!! We have already emailed your order details.You can also download the QR Code there and you will be shipped by your shipping address in 2 days time.please call 8812 for more information!');
        
        Session::put('ordernumber', $Ordernumber);

        return redirect('/redirect');
    } catch (\Exception $e) {
        // Handle the exception when there is a connection error
        // Order::where('id',$Orderid)->delete();
        $orderdelete = $this->cancel_order($Orderid);
        Shipping::where('id',$shipid)->delete();
        Log::error('Error sending order confirmation email: ' . $e->getMessage());
        
        Session::put('error','An error occurred while sending the order confirmation email. Please try again later.');
        return redirect('/redirect');
    }
       
      }

      public function cancel_order($Orderid)
      {
        $order = Order::find($Orderid);
        $productIDs = ltrim($order->product_id, ',');
        $productIDs = explode(', ', $order->product_id);
        $quantities = explode(', ', $order->eachquantity);
    
        foreach ($productIDs as $key => $productID) {
          $product = Product::find($productID);
          if ($product) {
            $newQuantity = $product->quantity + $quantities[$key];
            $neworederquantity = $product->orderQuantity - $quantities[$key];
            $product->quantity = $newQuantity;
            $product->orderQuantity = $neworederquantity;
            $product->save();
          }
        }
    
        $order->delete();
    
        return ('You have successfully canceled your order.');
      }
}
