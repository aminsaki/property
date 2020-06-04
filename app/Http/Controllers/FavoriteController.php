<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Property;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{

    public function show()
    {

        $favorite = User::with('propertys')->find(Auth::user()->id);

        return view('panel/showFavorite', compact('favorite'));
    }

    public function create(Request $request, $id)
    {

        $propertys = Property::find($id);
        $result = $propertys->users()->attach(Auth::user()->id);

        if ($request) {
            $request->session()->flash('massages', 'Added to your interest');
            return redirect()->back();

        }


    }

    public function delete(Request $request, $id)
    {
        if(!$id) return redirect()->back();


        $user  = User::find(Auth::user()->id);
        $result = $user->propertys()->detach($id);

        if ($request) {
            $request->session()->flash('massages', 'Your interest has been removed');
            return redirect()->back();

        }

    }
}
