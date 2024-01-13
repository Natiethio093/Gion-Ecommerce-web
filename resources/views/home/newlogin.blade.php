<!Doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Finish Setup</title>
    <link rel="shortcut icon" href="{{asset('images/favicon2.png')}}" type="">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.6/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/bootstrap.css')}}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="{{asset('css/font-awesome.min.css')}}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

    <style>
        .custom-font-size {
            font-size: 16px;
            color: red;
        }
    </style>
</head>

<body>
    <div class="mt-5 d-flex justify-content-center ">
        <form class="needs-validation pt-5 pb-5 border shadow" method="post" action="{{url('newlogin')}}" style="width:400px" novalidate>
            @csrf
            <div class="justify-content-center">
                <img width="250" src="{{asset('images/logocart.png')}}" style="margin-left:80px" alt="#" class="mb-5" />
                <div class="mb-3">
                    <label for="Phone" class="form-label" style="margin-left:50px">Phone Number</label>
                    <input type="number" class="form-control" style="width:300px;margin-left:50px" id="Phone" name="Phone" required>
                    <div class="invalid-feedback custom-font-size" style="margin-left:50px">
                        Please provide Your Phone Number.
                    </div>
                    <span class="span" style="margin-left:50px;color:red">@error('Phone'){{$message}}@enderror</span>
                </div>
                <div class="mb-3">
                    <label for="Address" class="form-label" style="margin-left: 50px">Address:</label>
                    <input type="text" class="form-control" style="width: 300px; margin-left: 50px" id="Address" name="Address" required>
                    <div class="invalid-feedback custom-font-size" style="margin-left: 50px">
                        Please provide your Address
                    </div>
                    <span class="span" style="margin-left:50px;color:red">@error('Address'){{$message}}@enderror</span>
                </div>
                <div class="mb-3">
                    <label for="Password" class="form-label" style="margin-left:50px">Password</label>
                    <input type="password" class="form-control" style="width:300px;margin-left:50px" name="Password" id="Password" required>
                    <div class="invalid-feedback custom-font-size" style="margin-left:50px">
                        Please provide Your Password
                    </div>
                    <span class="span" style="margin-left:50px;color:red">@error('Password'){{$message}}@enderror</span>
                </div>
                <div class="mb-3">
                    <label for="ConfirmPassword" class="form-label" style="margin-left:50px">Confirm Password</label>
                    <input type="password" class="form-control" style="width:300px;margin-left:50px" id="ConfirmPassword" name="ConfirmPassword" required>
                    <div class="invalid-feedback custom-font-size" style="margin-left:50px">
                        Please Confirm Your Password
                    </div>
                    <span class="span" style="margin-left:50px;color:red">@error('confirmpassword'){{$message}}@enderror</span>
                </div>
                <button type="submit" class="btn btn-primary" style="margin-left:50px">Submit</button>
            </div>
        </form>
    </div>

    <script src="{{asset('home/js/jquery-3.4.1.min.js')}}"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.min.js" integrity="sha512-WW8/jxkELe2CAiE4LvQfwm1rajOS8PHasCCx+knHG0gBHt8EXxS6T6tJRTGuDQVnluuAvMxWF4j8SNFDKceLFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    @if(Session::has('message'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.success("{{ Session::get('message') }}", 'Success!', {
            timeOut: 8000
        });
    </script>
    @elseif(Session::has('failed'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.error("{{ Session::get('failed') }}", 'Error!', {
            timeOut: 20000
        });
    </script>
    @elseif(Session::has('confirmpassword'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.error("{{ Session::get('confirmpassword') }}", 'Error!', {
            timeOut: 20000
        });
    </script>
    @elseif(Session::has('info'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.info("{{ Session::get('info') }}", 'Information!', {
            timeOut: 8000
        });
    </script>
    @elseif(Session::has('sellinfo'))
    <script>
        toastr.options = {
            "progressBar": true,
            "positionClass": "toast-top-right",
            "closeButton": true,
        }
        toastr.info("{{ Session::get('sellinfo') }}", 'Information!', {
            timeOut: 17000
        });
    </script>
    @endif

    <script>
        (function() {
            'use strict';

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation');

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function(form) {
                    form.addEventListener('submit', function(event) {
                        if (!form.checkValidity()) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
        })();
    </script>
    <script>
        function removeFlashMessage() {
            var flashMessage = document.getElementById('flash-message');
            if (flashMessage) {
                flashMessage.parentNode.removeChild(flashMessage);
            }
        }
    </script>
    <script src="{{asset('home/js/popper.min.js')}}"></script>
    <!-- bootstrap js -->
    <script src="{{asset('home/js/bootstrap.js')}}"></script>
    <!-- custom js -->
    <script src="{{asset('home/js/custom.js')}}"></script>
</body>

</html>