<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Jenssegers\Mongodb\Eloquent\Model as Eloquent;

class MyCollection extends Eloquent
{
    protected $connection = 'mongodb';
    protected $collection = 'my_collection';

    protected $guarded = ['_id'];
    protected $fillable = [];
}
