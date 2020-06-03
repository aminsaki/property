<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    protected $table ="areas";
    protected $fillable=['title'];


    public function state(){

        return $this->belongsTo(State::class);
    }
}
