<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BusinessController extends Controller
{
    //
    public function business(){
        return view('ITProcess.business');
    }

    public function goals(){
        return view('ITProcess.itgoals');
    }
}
