<!DOCTYPE html>
<html>

<head>
   <!-- Basic -->
   <meta charset="utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <meta name="keywords" content="" />
   <meta name="description" content="" />
   <meta name="author" content="" />
   <link rel="shortcut icon" href="{{asset('images/favicon2.png')}}" type="">
   <title>Store</title>
   <link rel="stylesheet" type="text/css" href="{{asset('home/css/bootstrap.css')}}" />
   <link href="{{asset('css/font-awesome.min.css')}}" rel="stylesheet" />
   <link href="{{asset('home/css/style.css')}}" rel="stylesheet" />
   <link href="{{asset('home/css/responsive.css')}}" rel="stylesheet" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
   
   <style>
    .toast-success {
       background-color:#094f07 !important;
       color: #fff !important; 
       }
       .toast-error {
       background-color:#b91515 !important; 
       color: #fff !important; 
       }
       .toast-info {
       background-color:#0a617e !important; 
       color: #fff !important;
       }
   </style>
   
</head>

<body>
   <div class="hero_area">
      <!-- header section strats -->
      @include('home.header')

      <section class="product_section layout_padding">
         <div class="container">
            <div class="heading_container heading_center">
               <h2>
                  Our <span>Store</span>
               </h2>
            </div>
            <!-- @if(session('success'))
            <div class="alert alert-success" id="flash-message" role="alert" style="text-align:center">
               {{ session('success') }}
               <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true" onclick="removeFlashMessage()">X</span>
            </div>
            @endif -->
            <div class="row">
               @foreach($product as $products)
               <div class="col-sm-6 col-md-4 col-lg-4">
                  <div class="box">
                     <div class="option_container">
                     <div class="options">
                        <form action="{{route('product_detail')}}" method="get">
                           @csrf
                           <input type="hidden" name="productId" value="{{$products->id}}" min="1">
                           <button type="submit" class="option1  p-2" style="width:190px;border-radius:50px"> Product Detail</button>
                        </form>
                        <div class="text-md-center">
                           <div class="d-flex flex-md-row align-items-center mt-3">
                              <form action="{{route('add_cartfull')}}" method="Post">
                                 @csrf
                                 <div class="input-group">
                                    <input type="hidden" name="productsId" value="{{$products->id}}" min="1">
                                    <input type="number" name="quantity" class="form-control" min="1" value="1" style="width: 100px; height: 48px;"  required>
                                    <div class="input-group-append">
                                       <button type="" class="btn btn-outline-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
                                    </div>
                                 </div>
                              </form>
                              <form action="{{route('add_wishlistfull')}}" method="Post">
                                 @csrf
                                 <input type="hidden" name="productsId" value="{{$products->id}}" min="1">
                                 <button type="submit" class="btn btn-outline-dark ml-2" style="height:48px;"><i class="fa fa-heart" aria-hidden="true"></i></button>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
                     <div class="img-box">
                        <img src="{{asset('product/'. $products->image)}}" alt="">
                     </div>
                     <div class="detail-box">
                        <h5>
                           {{$products->title}}
                        </h5>
                        @if($products->discount_price!=null)
                        <h6 style="color:red">
                           {{$products->discount_price}}<span style="color:orange">ETB</span>
                        </h6>
                        <h6 style="color:blue ;text-decoration:line-through; margin-left:10px">
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
               <!-- <a href="{{url()->previous()}}" class="btn btn-danger" style="margin-bottom:10px;margin-top:30px;margin-left:550px">Back</a> -->
            </div>
      </section>


   </div>
   @include('home.footer')
   <!-- footer end -->
   
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
        toastr.success("{{ Session::get('success') }}" ,'Success!' ,{timeOut:5000});
    </script>
   @elseif(Session::has('failed'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.error("{{ Session::get('failed') }}" ,'Error!' ,{timeOut:15000});
    </script>
   @elseif(Session::has('info'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.info("{{ Session::get('info') }}" ,'Information!' ,{timeOut:15000});
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

   <!-- jQery -->
   <script>
      function removeFlashMessage() {
         var flashMessage = document.getElementById('flash-message');
         if (flashMessage) {
            flashMessage.parentNode.removeChild(flashMessage);
         }
      }
   </script>
    <!-- popper js -->
    <script src="{{asset('home/js/popper.min.js')}}"></script>
    <!-- bootstrap js -->
    <script src="{{asset('home/js/bootstrap.js')}}"></script>
    <!-- custom js -->
    <script src="{{asset('home/js/custom.js')}}"></script>
</body>

</html>