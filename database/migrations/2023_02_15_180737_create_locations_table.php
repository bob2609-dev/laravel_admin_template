<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('locations', function (Blueprint $table) {
            $table->id();
            $table->string('owner_firstname');
            $table->string('owner_lastname');
            $table->string('owner_id_type')->nullable();
            $table->string('owner_id_number')->nullable();
            $table->string('owner_mobile_number')->nullable();
            $table->string('region');
            $table->string('district');
            $table->string('ward');
            $table->decimal('longitude',10,7);
            $table->decimal('latitude',10,7);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('locations');
    }
};
