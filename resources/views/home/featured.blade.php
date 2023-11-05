<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
    <style>
        .carousel-item {
            transition-duration: 0.4s;
        }
    </style>
</head>

<body>
    <div class="container mb-3">
        <h1 class="text-center">Featured Product</h1>
        <hr>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2500">
            <div class="carousel-inner">
                <!--Slide 1-->
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-3">
                            <img src="{{asset('images/Applewatch2.jpg')}}" class="d-block w-100" alt="Apple Watch">
                        </div>
                        <div class="col-3">
                            <img src="{{asset('images/headseat1.jpg')}}" class="d-block w-100" alt="Head Seat">
                        </div>
                        <div class="col-3">
                            <img src="{{asset('images/applephone.jpg')}}" class="d-block w-100" alt="Apple Phone">
                        </div>
                        <div class="col-3">
                            <img src="{{asset('images/appleimac8.jpg')}}" class="d-block w-100" alt="Apple imac">
                        </div>

                    </div>

                </div>
                <!--end of Slide 1-->
                <!--Slide 2-->
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-3">
                            <img src="{{asset('images/Applewatch1.jpg')}}" class="d-block w-100" alt="Apple Watch">
                        </div>
                        <div class="col-3">
                            <img src="{{asset('images/headseat3.jpg')}}" class="d-block w-100" alt="Head Seat">
                        </div>
                        <div class="col-3">
                            <img src="{{asset('images/applelaptop.jpeg')}}" class="d-block w-100" alt="Apple Phone">
                        </div>
                        <div class="col-3">
                            <img src="{{asset('images/airpod.jpeg')}}" class="d-block w-100" alt="Apple imac">
                        </div>

                    </div>
                </div>
                <!--end of Slide 2-->

            </div>
            <!-- <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button> -->
            <!-- <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button> -->
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="{{asset('home/js/jquery-3.4.1.min.js')}}"></script>
</body>

</html>