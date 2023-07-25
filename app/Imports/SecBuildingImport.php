<?php

namespace App\Imports;

use App\Models\SecBuilding;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SecBuildingImport implements ToModel, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        $secBuilding = new SecBuilding();
        $fillable  = $secBuilding->getFillable();
        return new SecBuilding(
            array_combine(
                $fillable,
                $row
            )
        );
    }
}
