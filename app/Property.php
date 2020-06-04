<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    protected $table = "propertys";
    protected $fillable = ['status', 'title', 'description', 'categorie_id', 'area_id', 'user_id'];
    protected $with =['images']; ///feach

    public function images()
    {

        return $this->hasMany(Image::class);

    }

    public function users()
    {
        return $this->belongsToMany(User::class);


    }




    public function scopeGetId($query, $id, $role_id)
    {
        $resutl = Role::where(['id' => $role_id])->first();

        if ($resutl->title == "admin")
            return $query->orderByDesc('id');

        return $query->where(['user_id' => $id])->orderByDesc('id');


    }


}
