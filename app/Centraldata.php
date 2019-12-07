<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Centraldata extends Model
{
    //

    protected $guarded = [];

    public function customer(){

        return $this->belongsTo(Customer::class);
    }

    public function sent_requests(){

        return $this->hasOne(ExchangeRequest::class,'centraldata_req_id');
    }

    public function receive_requets(){

        return $this->hasMany(ExchangeRequest::class,'centraldata_id');
    }

}
