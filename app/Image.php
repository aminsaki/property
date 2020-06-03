<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $table ="images";

    protected  $fillable=['url','property_id','title'];

    public function property(){

        return $this->belongsTo(Property::class);
    }
}
