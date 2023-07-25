<?php

namespace App\Http\Controllers;

use App\Imports\LocationsImport;
use App\Imports\MainValuationImport;
use App\Imports\SecBuildingImport;
use App\Models\MongoMainValuation;
use App\Models\SecondaryBuilding;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Jobs\QueueImport;

class ImportController extends Controller
{
    //
    public function import(Request $request, $fileType)
    {
        ini_set('upload_max_filesize', '10M');
        ini_set('post_max_size', '10M');
        ini_set('max_execution_time', '300');
        ini_set('memory_limit', '256M');
        $file = $request->file('file');
        $header = [];
        $collection = getMainValuationCollection();

        $data = Excel::toArray([], $file)[0];
        $data1 = Excel::toArray([], $file);
        $header = $data1[0][0];



        $chunkSize = 5000;
        $totalRows = count($data);
        $numChunks = ceil($totalRows / $chunkSize);

        // for ($i = 0; $i < $numChunks; $i++) {
        //     $chunk = array_slice($data, $i * $chunkSize, $chunkSize);
        //     foreach ($chunk as $index => $row) {

        //         if ($index === 0) {
        //             //                    $header = array_keys($row);
        //             continue;
        //         }
        //         //                if (empty($header)) {
        //         //                    $header = array_keys($row);
        //         //                }
        //         $data = array_combine($header, $row);
        //         try {
        //             MongoMainValuation::create($data);
        //         } catch (\Throwable $th) {
        //             return $th->getMessage();
        //         }
        //     }
        // }

        // return 'Finished Reading';

        try {

            switch ($fileType) {
                case 'test':
                    for ($i = 0; $i < $numChunks; $i++) {
                        $chunk = array_slice($data, $i * $chunkSize, $chunkSize);
                        foreach ($chunk as $index => $row) {

                            if ($index === 0) {
                                //                    $header = array_keys($row);
                                continue;
                            }
                            //                if (empty($header)) {
                            //                    $header = array_keys($row);
                            //                }
                            $data = array_combine($header, $row);
                            try {
                                SecondaryBuilding::create($data);

                                return response()->json([
                                    'success' => true,
                                    'message' => 'Upload Completed',

                                ]);
                            } catch (\Throwable $th) {

                                return response()->json([
                                    'success' => false,
                                    'message' => 'Upload failed',
                                    'description'=>$th->getMessage()

                                ]);
                            }
                        }
                    }



                case 'main_valuations':

                    for ($i = 0; $i < $numChunks; $i++) {
                        $chunk = array_slice($data, $i * $chunkSize, $chunkSize);
                        foreach ($chunk as $index => $row) {

                            if ($index === 0) {
                                //                    $header = array_keys($row);
                                continue;
                            }
                            //                if (empty($header)) {
                            //                    $header = array_keys($row);
                            //                }
                            $data = array_combine($header, $row);
                            try {
                                MongoMainValuation::create($data);
                                return response()->json([
                                    'success' => true,
                                    'message' => 'Upload Completed',

                                ]);
                            } catch (\Throwable $th) {

                                return response()->json([
                                    'success' => false,
                                    'message' => 'Upload failed',
                                    'description'=>$th->getMessage()

                                ]);
                            }
                        }
                    }

                    return 'Finished Reading';

                case 'secondary_buildings':
                    for ($i = 0; $i < $numChunks; $i++) {
                        $chunk = array_slice($data, $i * $chunkSize, $chunkSize);
                        foreach ($chunk as $index => $row) {

                            if ($index === 0) {
                                //                    $header = array_keys($row);
                                continue;
                            }
                            //                if (empty($header)) {
                            //                    $header = array_keys($row);
                            //                }
                            $data = array_combine($header, $row);
                            try {
                                SecondaryBuilding::create($data);
                                return response()->json([
                                    'success' => true,
                                    'message' => 'Upload Completed',

                                ]);
                            } catch (\Throwable $th) {

                                return response()->json([
                                    'success' => false,
                                    'message' => 'Upload failed',
                                    'description'=>$th->getMessage()

                                ]);
                            }
                        }
                    }

                    return 'Finished Reading';

                default:
                    # code...
                    break;
            }



            return $fileType . ' Uploaded';

            // Excel::import(new LocationsImport,$file);

        } catch (\Exception $e) {


            return $e->getMessage();
            // return redirect()->back()
            //     ->with('error', 'There was an error importing the data.');
        }



        // return redirect()->back()->with('success', 'Data imported successfully.');
    }
}
