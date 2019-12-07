<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    //

    protected $guarded = [];

    public function central_datas(){

        return $this->hasMany(Centraldata::class,'customer_id');
    }

}
