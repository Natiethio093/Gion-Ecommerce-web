<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/bootstrap.css')}}" />
    <!-- <link rel="stylesheet" type="text/css" href="{{ asset('home/css/loginbg.css') }}"> -->
    <link rel="shortcut icon" href="{{asset('images/favicon2.png')}}" type="">
    <style>

    </style>
    <title>Login</title>
</head>

<body>
    <x-guest-layout class="body" style="background-color:gray;">
        <x-authentication-card class="body">
            
            <x-slot name="logo">
                <img width="250" src="{{asset('images/logocart.png')}}" alt="#" />
            </x-slot>

            <x-validation-errors class="mb-4" />

            @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
            @endif

            <form method="POST" action="{{ route('login') }}">
                @csrf

                <div>
                    <x-label for="email" value="{{ __('Email') }}" />
                    <x-input id="email" class="block mt-1 w-full" type="email" name="email" value="{{ old('email') ?? session('email') }}" required autofocus autocomplete="username" />
                </div>

                <div class="mt-4">
                    <x-label for="password" value="{{ __('Password') }}" />
                    <x-input id="password" class="block mt-1 w-full" type="password" name="password" value="{{ old('password') ?? session('password') }}" required autocomplete="current-password" />
                </div>

                <div class="block mt-4">
                    <label for="remember_me" class="flex items-center">
                        <x-checkbox id="remember_me" name="remember" />
                        <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                    </label>
                </div>

                <div class="flex items-center justify-end mt-4">
                    @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                    @endif

                    <x-button class="ml-4">
                        {{ __('Log in') }}
                    </x-button>
                </div>
                <div>
                    <a class="btn btn-dark" href="{{url('auth/login')}}">
                        <!-- <i class="fa fa-google fa-lg mr-2"></i> Sign up with Google -->
                        <img src="{{asset('images/google.svg')}}" alt="img" class="w-6 h-6 inline mr-2 " /> 
                        Sign up with Google
                    </a>
                </div>
            </form>
        </x-authentication-card>
    </x-guest-layout>

   
</body>

</html>