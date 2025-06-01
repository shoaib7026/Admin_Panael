<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{

    public function loginuser(Request $request){

       $credentials = $request->validate([
            'email'=>'required|email',
            'password'=>'required',
        ]);

        if(Auth::attempt($credentials)){
            $request->session()->regenerate();
             if (Auth::user()->is_admin) {
        return redirect()->route('admin')->with('success', 'Welcome Admin!');
    }
           else{
             return redirect()->route('userdashboard')->with('success','login Succesfull');
           }

        }


         return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ]);
    }
}