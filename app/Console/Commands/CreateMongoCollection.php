<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Schema;
use Jenssegers\Mongodb\Schema\Blueprint;

class CreateMongoCollection extends Command
{







    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'mongo:create {collection}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create a new MongoDB collection';

    public function handle()
    {

        $collectionName =$this->argument('collection');

        Schema::connection('mongodb')->create($collectionName, function (Blueprint $collection) {
         });


         $this->info("Collection '{$collectionName}' created successfully.");

        // return Command::SUCCESS;
    }
}
