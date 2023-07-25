<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;
    protected $table = 'locations';

    protected $fillable = [


        'owner_firstname',
        'owner_lastname',
        'owner_id_type',
        'owner_id_number',
        'region',
        'district',
        'ward',
        'longitude',
        'latitude',
        'owner_mobile_number'

    ];
}
