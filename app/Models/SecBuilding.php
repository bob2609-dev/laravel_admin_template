<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SecBuilding extends Model
{
    use HasFactory;
    protected $table = 'sec_buildings';


    protected $fillable=[];

    public function __construct(array $attributes =[])
    {
        parent::__construct($attributes);

        $this->fillable = $this->getFillable();
    }

}
