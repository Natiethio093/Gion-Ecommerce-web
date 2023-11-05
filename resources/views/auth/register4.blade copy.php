<head>
    <title>Register</title>
    <link rel="shortcut icon" href="{{asset('images/favicon2.png')}}" type="">
    <style>
        body {
            background-image: url("images/logocartt.png");
            background-size: cover;
            background-repeat: no-repeat;
        }
        </style>
</head>

<body>

    <x-guest-layout>
        <x-authentication-card>
            <x-slot name="logo">
                <!-- <x-authentication-card-logo /> -->
                <img width="250" src="/images/logocartt.png" alt="#" />
            </x-slot>

            <x-validation-errors class="mb-4" />

            <form method="POST" action="{{route('register')}}"> <!-- enctype="multipart/form-data"-->
                @csrf
                @if(session('message'))
                <div class="alert alert-success" id="flash-message" role="alert" style="text-align:center">
                    {{ session('message') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true" onclick="removeFlashMessage()">X</span></button>
                </div>
                @endif
                <div>
                    <x-label for="name" value="{{ __('Name') }}" />
                    <x-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
                </div>

                <!-- <div>
                    <x-label for="lastname" value="{{ __('Last Name') }}" />
                    <x-input id="lastname" class="block mt-1 w-full" type="text" name="lastname" :value="old('lastname')" required autofocus autocomplete="lastname" />
                </div> -->

                <div class="mt-4">
                    <x-label for="email" value="{{ __('Email') }}" />
                    <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
                </div>
                <div class="mt-4">
                    <x-label for="phone" value="{{ __('phone') }}" />
                    <x-input id="phone" class="block mt-1 w-full" type="number" name="phone" :value="old('phone')" required autocomplete="username" />
                </div>
                <div class="mt-4">
                    <x-label for="address" value="{{ __('address') }}" />
                    <x-input id="address" class="block mt-1 w-full" type="text" name="address" :value="old('address')" required autocomplete="username" />
                </div>
               <div class="mt-4">
                    <x-label for="password" value="{{ __('Password') }}" />
                    <x-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
                </div>

                <div class="mt-4">
                    <x-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                    <x-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
                </div>
                <!-- <div class="mt-4">
                    <x-label for="password" value="{{ __('Customer Photo(Optional)') }}"/>
                    <input type="file" id="image" name="image" class="block mt-1 w-full" placeholder="Product Image"/>
                </div> -->


                @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-label for="terms">
                        <div class="flex items-center">
                            <x-checkbox name="terms" id="terms" required />

                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">'.__('Terms of Service').'</a>',
                                'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-label>
                </div>
                @endif

                <div class="flex items-center justify-end mt-4">
                    <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('login') }}">
                        {{ __('Already registered?') }}
                    </a>

                    <x-button class="ml-4">
                        {{ __('Register') }}
                    </x-button>
                </div>
            </form>
        </x-authentication-card>
    </x-guest-layout>
    <script>
      function removeFlashMessage() {
        var flashMessage = document.getElementById('flash-message');
        if (flashMessage) {
          flashMessage.parentNode.removeChild(flashMessage);
        }
      }
    </script>
</body>