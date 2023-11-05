<!Doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Finish Setup</title>
    <link rel="shortcut icon" href="{{asset('images/favicon2.png')}}" type="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>

    <div class="mt-5 d-flex justify-content-center ml-5">

        <form class="needs-validation pt-5 pb-5 border shadow" method="post" action="{{url('newlogin')}}" style="width:400px" novalidate>
            @csrf

            <div class="ml-5  justify-content-center">
            @if(session('message'))
                <div class="alert alert-success  d-flex justify-content-center" id="flash-message" role="alert" style="text-align:center;width:400px">
                    {{session('message')}}
                    <!-- <a href="{{ asset('pdf/order_detail.pdf') }}">Download PDF</a> -->
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="removeFlashMessage()">
                        <span aria-hidden="true">X</span>
                    </button>
                </div>
                @endif
                <img width="250" src="{{asset('images/logocartt.png')}}" style="margin-left:80px" alt="#" class="mb-5" />
               
                <div class="mb-3">
                    <label for="Phone" class="form-label" style="margin-left:50px">Phone Number</label>
                    <input type="number" class="form-control" style="width:300px;margin-left:50px" id="Phone" name="Phone" required>
                    <span class="span" style="margin-left:50px;color:red">@error('Phone'){{$message}}@enderror</span>
                    <div class="invalid-feedback" style="margin-left:50px">
                        Please provide Your Phone Number.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="Address" class=" ml-3" style="margin-left:50px">Address:</label>
                    <input type="text" class="form-control" style="width:300px;margin-left:50px" id="Address" name="Address" required>
                    <span class="span" style="margin-left:50px;color:red">@error('Address'){{$message}}@enderror</span>
                    <div class="invalid-feedback" style="margin-left:50px">
                        Please provide Your Address.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="Password" class="form-label" style="margin-left:50px">Password</label>
                    <input type="password" class="form-control" style="width:300px;margin-left:50px" name="Password" id="Password" required>
                    <span class="span" style="margin-left:50px;color:red">@error('Password'){{$message}}@enderror</span>
                    <div class="invalid-feedback" style="margin-left:50px">
                        Please provide Your Password
                    </div>
                </div>
                <div class="mb-3">
                    <label for="ConfirmPassword" class="form-label" style="margin-left:50px">Confirm Password</label>
                    <input type="password" class="form-control" style="width:300px;margin-left:50px" id="ConfirmPassword" name="ConfirmPassword" required>
                    <!-- <div class="invalid-feedback">
                    Please confirm Your Password.
                </div> -->
                    <div class="invalid-feedback" style="margin-left:50px">
                        Please Confirm Your Password
                    </div>
                    @error('confirmpassword')
                    <p class="text-red-500 text-xs mt-1" style="margin-left:50px;color:red">{{ $message }}</p>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary" style="margin-left:50px">Submit</button>
            </div>
        </form>
    </div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
<script src="{{asset('home/js/bootstrap.js')}}"></script>

</html>