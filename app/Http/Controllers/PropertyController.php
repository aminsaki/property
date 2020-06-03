<?php

namespace App\Http\Controllers;

use App\Area;
use App\Image;
use App\Property;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Filesystem\Filesystem;

class PropertyController extends Controller
{

    /**
     *  show view Property
     */
    public function index()
    {
        $areas = Area::all();
        return view('panel/CreateProperty', compact('areas'));
    }


    public function create(Request $request)
    {
        $day = Carbon::now()->day;
        $year = Carbon::now()->year;
        $month = Carbon::now()->month;
        $folder = "post/$year/$month/$day";

        $file = $request->file('url');
        if ($file != null) {
            $image = $file->getClientOriginalName();
            $path = $folder . '/' . time() . '/';

            if (file_exists($folder) == false) {
                $fs = new Filesystem();
                $fs->makeDirectory($folder, 0755, true);
            }
            $file->move($path,$image);
        }


        $property = Property::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'categorie_id' => $request->categorie_id,
            'area_id' => $request->area_id
        ]);

        if ($property) {
            $resutl = Image::create(['property_id' => $property->id, 'url' => $path,'title'=>$image]);
;
            if ($resutl) {

                $request->session()->flash('errors', 'Successfully inserted');
                return redirect()->back();
            }

        }
        $request->session()->flash('errors', 'Successfully inserted');
        return redirect()->back();


    }
    public function show(){

       $property= Property::with('images')->orderByDesc('id')->paginate(10);

        return view('panel/showProperty', compact('property'));

    }


}
