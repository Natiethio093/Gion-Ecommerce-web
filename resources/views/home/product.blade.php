<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="shortcut icon" href="images/favicon2.png" type="">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,500;1,100&display=swap" rel="stylesheet">
   <title>Products</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
   <style>
      body {
         font-family: 'Poppins', sans-serif;
      }

      .options a {
         text-decoration: none;
      }
      .toast-success {
       background-color:#094f07 !important; 
       color: #fff !important;
       opacity:1 !important;
       }
       .toast-error {
       background-color:#b91515 !important; 
       color: #fff !important;
       opacity:1 !important;
       }
       .toast-info {
       background-color:#0a617e !important; 
       color: #fff !important; 
       opacity:1 !important;
       }
   </style>

    <?php
      use Illuminate\Support\Facades\Session;
    ?>

</head>

<body>
   <section class="product_section layout_padding">
      <div class="container">
         <div class="heading_container heading_center">
            <h2>
               Our<span> New products</span>
            </h2>
         </div>
        
         <div class="row">
            @foreach($product as $products)
            <div class="col-sm-6 col-md-4 col-lg-4">
               <div class="box shadow">
                  <div class="option_container">
                     <div class="options">
                        <form action="{{route('product_detail')}}" method="get">
                           @csrf
                          <input type="hidden" name="productId" value="{{$products->id}}" min="1" >
                          <button type="submit" class="option1 mb-3 p-2"  style="width:190px;border-radius:50px"> Product Detail</button>
                        </form>
                        <div class="row justify-content-start">
                           <div class="col-md-9 col-sm-12">
                              <form action="{{route('add_cart')}}" method="Post">
                                 @csrf
                                 <div class="input-group">
                                    <input type="hidden" name="productsId" value="{{$products->id}}" min="1">
                                    <input type="number" name="quantity" class="form-control" min="1" value="1" style="width:50px;height:48px;" placeholder="Quantity" required>
                                    <div class="input-group-append">
                                       <button type="" class="btn btn-outline-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
                                    </div>
                                 </div>
                              </form>
                           </div>
                           <div class="col-md-1 col-sm-12">
                              <form action="{{route('add_wishlist')}}" method="Post">
                                 @csrf
                                 <input type="hidden" name="productsId" value="{{$products->id}}" min="1">
                                 <button type="submit" class="btn btn-outline-dark" style="height:48px;"><i class="fa fa-heart" aria-hidden="true"></i></button>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="img-box">
                     <img src="/product/{{$products->image}}" alt="">
                  </div>
                  <div class="detail-box">
                     <h5>
                        {{$products->title}}
                     </h5>
                     @if($products->discount_price!=null)
                     <h6 style="color:red">

                        {{$products->discount_price}}<span style="color:orange">ETB</span>
                     </h6>
                     <h6 style="color:blue ;text-decoration:line-through;">

                        {{$products->price}}<span style="color:orange">ETB</span>
                     </h6>
                     @else
                     <h6 style="color:blue">

                        {{$products->price}}<span style="color:orange">ETB</span>
                     </h6>
                     @endif

                  </div>
               </div>
            </div>
            @endforeach
            <span style="padding-top:20px">
               {!!$product->withQueryString()->links('pagination::bootstrap-5')!!}
            </span>

         </div>
   </section>

   <script src="{{asset('home/js/jquery-3.4.1.min.js')}}"></script>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.min.js" integrity="sha512-WW8/jxkELe2CAiE4LvQfwm1rajOS8PHasCCx+knHG0gBHt8EXxS6T6tJRTGuDQVnluuAvMxWF4j8SNFDKceLFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

   @if(Session::has('success'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.success("{{ Session::get('success') }}" ,'Success!' ,{timeOut:8000});
    </script>
   @elseif(Session::has('failed'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.error("{{ Session::get('failed') }}" ,'Error!' ,{timeOut:20000});
    </script>
   @elseif(Session::has('info'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.info("{{ Session::get('info') }}" ,'information!' ,{timeOut:8000});
    </script>
   @elseif(Session::has('sellinfo'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.info("{{ Session::get('sellinfo') }}" ,'Information!' ,{timeOut:17000});
    </script>
  @endif

</body>

</html>