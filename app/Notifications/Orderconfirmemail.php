<?php

namespace App\Notifications;

use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use PDF;

class Orderconfirmemail extends Notification
{
    use Queueable;
    private $details;

    /**
     * Create a new notification instance.
     */
    public function __construct($details)
    {
        $this->details = $details;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        $orderid = $this->details['Orderid'];

        $order = Order::find($orderid);

        $pdf = PDF::loadView('home.pdf', compact('order'));
        $pdfname = 'order_detail_' . uniqid() . '.pdf';
        $pdfContents = $pdf->output();
        $filePath = public_path('temp/' . $pdfname);
        file_put_contents($filePath, $pdfContents);

        // return (new MailMessage)
        //             ->greeting($this->details['greeting'])
        //             ->line($this->details['firstline'])
        //             ->line($this->details['body'])
        //             ->line($this->details['Ordernumber'])
        //             ->action($this->details['button'], $this->details['url'])
        //             ->line($this->details['lastline']);

        $mailMessage = (new MailMessage)
            ->greeting($this->details['greeting'])
            ->line($this->details['firstline'])
            ->line($this->details['body'])
            ->line($this->details['Ordernumber'])
            ->action($this->details['button'], $this->details['url'])
            ->attach($filePath, [
                'as' => 'order_detail.pdf',
                'mime' => 'application/pdf',
            ])
            ->line($this->details['lastline']);

        // File::delete(public_path('temp/' . $pdfname)); // delete the pdf 
        return $mailMessage;
    }
    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
}
