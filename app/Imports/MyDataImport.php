<?php

namespace App\Imports;

use App\Models\Location;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class MyDataImport implements ToCollection
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        //
    }

    public function map($row): array
    {



        return [

            'owner_firstname' => $row['owner_firstname'],
            'owner_lastname' => $row['owner_lastname'],
            'owner_id_type' => $row['owner_id_type'],
            'owner_id_number' => $row['owner_id_number'],
            'region' => $row['region'],
            'district' => $row['district'],
            'ward' => $row['ward'],
            'longitude' => $row['longitude'],
            'latitude' => $row['latitude'],


        ];
    }


    public function model(array $row)
    {
        return new Location([

            'owner_firstname' => $row['owner_firstname'],
            'owner_lastname' => $row['owner_lastname'],
            'owner_id_type' => $row['owner_id_type'],
            'owner_id_number' => $row['owner_id_number'],
            'region' => $row['region'],
            'district' => $row['district'],
            'ward' => $row['ward'],
            'longitude' => $row['longitude'],
            'latitude' => $row['latitude'],

        ]);
    }
}
