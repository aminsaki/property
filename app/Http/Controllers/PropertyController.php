<?php

namespace App\Http\Controllers;

use App\Area;
use App\Events\SendMail;
use App\Http\Requests\RequestProperty;
use App\Image;
use App\Property;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Event;

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


    public function create(RequestProperty $request)
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
            $file->move($path, $image);
        }


        $property = Property::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'categorie_id' => $request->categorie_id,
            'area_id' => $request->area_id,
            'user_id' => Auth::user()->id
        ]);

        if ($property) {
            $resutl = Image::create(['property_id' => $property->id, 'url' => $path, 'title' => $image]);

            if ($resutl) {
                ///send Email
                   Event::dispatch(new SendMail(Auth::user()->email, "اطلاعات شما در حال بررسی میباشد"));

                $request->session()->flash('massages', 'Successfully inserted');
                return redirect()->back();
            }
        }
        $request->session()->flash('massages', 'Successfully inserted');
        return redirect()->back();


    }

    public function show()
    {
        $user  =Auth::user();
        $property = Property::with(['images'])->getId($user->id,$user->role_id)->paginate(10);

        return view('panel/showProperty', compact('property'));

    }

    public function confirmation(Request $request , $id)
    {

        $result = Property::where(['id' => $id])
            ->update(['status' => 'true']);
        if ($result) {
            Event::dispatch(new SendMail(Auth::user()->email, "اطلاعات شما با انتشار یافت"));
            $request->session()->flash('massages', 'Successfully inserted');
            return redirect()->back();
        }

    }


}
