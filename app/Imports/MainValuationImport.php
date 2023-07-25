<?php

namespace App\Imports;

use App\Models\MainValuation;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class MainValuationImport implements ToModel, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        $mainValuation = new MainValuation();


        $fillable  = $mainValuation->getFillable();


        Log::debug('Fillable array:', $fillable);
        Log::debug('Row array:', $row);


        return new MainValuation(
            array_combine(
                $fillable,
                $row
            )
        );
    }
}
