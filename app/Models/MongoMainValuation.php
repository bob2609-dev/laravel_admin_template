<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Jenssegers\Mongodb\Eloquent\Model as Eloquent;

class MongoMainValuation extends Eloquent
{

    protected $connection = 'mongodb';
    protected $collection = 'MongoMainValuation';

    protected $guarded = ['_id'];
    protected $fillable = [];


     public function secondaryBuilding()
    {
        // return $this->hasMany(SecondaryBuilding::class);
        return $this->hasMany(SecondaryBuilding::class, 'uuid', 'uuid');

    }

}
