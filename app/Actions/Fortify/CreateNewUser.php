<?php

namespace App\Actions\Fortify;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array<string, string>  $input
     */
    public function create(array $input): User
    {
        Validator::make($input, [
            'name' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'max:15', 'unique:users'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' => ['required', 'string', 'max:10', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['accepted', 'required'] : '',
            // 'profile_picture' => ['nullable', 'image', 'max:3052'], // Maximum file size of 3MB
        ])->validate();

        // $profilePicPath = null;

        // if ($input['profile_picture']) {
        //     $uploadedImage = $input['profile_picture'];
        //     $extension = $uploadedImage->getClientOriginalExtension();
        //     $imageName = time() . '.' . $extension;
        //     $uploadedImage->move('public/users', $imageName);
        //     $profilePicPath = 'users/' . $imageName;
        // }

        return User::create([
            'name' => $input['name'],
            'username' => $input['username'],
            'email' => $input['email'],
            'phone' => $input['phone'],
            'address' => $input['address'],
            'password' => Hash::make($input['password']),
            // 'profile_pic' => $input['profile_picture'],
        ]);
    }
}
