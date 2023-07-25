<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\MongoMainValuation;
use App\Models\MyCollection;
use App\Models\SecondaryBuilding;
use Illuminate\Http\Request;
use Jenssegers\Mongodb\Collection;
use Jenssegers\Mongodb\Queue\MongoConnector;
use MongoDB\Client as MongoDBClient;

class myMongoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */

    //       * @return \Illuminate\Http\Response

    public function index()
    {



        $relocationData = MongoMainValuation::all();


        foreach ($relocationData as $data) {
        }


        foreach ($relocationData as $data) {
            // dump($data->secondaryBuilding);
            dump('Main Valuation ID: ' . $data->uuid);
            // dump('Main Valuation ID: ' . $data->secondaryBuilding);

            foreach ($data->secondaryBuilding as $secBuilding) {

                dump('Secondary Valuation : ' . $secBuilding->uuid);
            }
            // dump($data->secondaryBuilding->main_valuation_id);
        }




        // **************************************************************************
        // return $relocationData;



        // return $data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
