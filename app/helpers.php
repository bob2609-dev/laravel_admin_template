<?php

use MongoDB\Client as MongoDBClient;

function getCurrentDate()
{
    return date('Y-m-d H:i:s');
}


function getMainValuationCollection()
{
    // $client = new MongoDBClient('mongodb://'.env('MONGODB_HOST').':'.env('MONGODB_PORT'),[],[
    //     'username' => env('MONGODB_USERNAME'),
    //     'password' => env('MONGODB_PASSWORD'),
    //     'authSource' => env('MONGODB_DATABASE')

    // ]);

    $connectionString = 'mongodb://' . env('MONGODB_HOST') . ':' . env('MONGODB_PORT');
    $client = new MongoDBClient($connectionString, [
        'username' => env('MONGODB_USERNAME'),
        'password' => env('MONGODB_PASSWORD'),
        'db' => env('MONGODB_DATABASE'),
    ]);

    $collection = $client->selectCollection(env('MONGODB_DATABASE'), 'SecondaryBuilding');
    // $result =         $collection->createIndex(['id' => 1], ['unique' => true]);



    // return $result;


    // $client = new MongoDBClient('mongodb://'.env('MONGODB_HOST').':'.env('MONGODB_PORT'),[],[
    //     'username' => 'root',
    //     'password' => 'root',
    //     'authSource' => 'admin'

    // ]);

    // $client->startSession();


    return $client->listDatabases();

    $collection = $client->selectCollection(env('MONGODB_DATABASE'), 'MainValuation');

    return $collection;
}
