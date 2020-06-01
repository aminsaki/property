<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    protected $table = "propertys";
    protected $fillable =['title','Property Type','description'];


    public function images(){

        return $this->hasMany(Image::class);

    }

    public function favorite()
    {
        return $this->morphOne('App\Favorite', 'favoriteable');
    }



}
