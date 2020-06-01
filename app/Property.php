<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    protected $table = "propertys";
    protected $fillable =['title','Property Type','description'];


}
