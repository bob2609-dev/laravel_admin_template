<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Jenssegers\Mongodb\Eloquent\Model as Eloquent;

class SecondaryBuilding extends Eloquent
{

    protected $connection = 'mongodb';
    protected $collection = 'SecondaryBuilding';

    protected $guarded = ['_id'];
    protected $fillable = [];

    public function mongoMaingValuation()
    {
        return $this->belongsTo(MongoMainValuation::class);
    }



}
