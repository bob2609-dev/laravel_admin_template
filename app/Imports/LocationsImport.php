<?php

namespace App\Imports;

use App\Models\Location;
use Maatwebsite\Excel\Concerns\ToArray;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class LocationsImport implements ToModel,WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */

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
            'owner_mobile_number' => $row['owner_mobile_number'],
            //
        ]);
    }
}
