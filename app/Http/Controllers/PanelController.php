<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class PanelController extends Controller
{

    public function index(){

         return view('panel/panel');
    }

}
