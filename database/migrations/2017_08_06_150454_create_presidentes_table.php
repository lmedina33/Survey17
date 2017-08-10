<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePresidentesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('presidentes', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('entidad_id')->unsigned();
            $table->foreign('entidad_id')->references('id')->on('entidades');
            $table->string('nombre_presidente',200);
            $table->string('dni');
            
            
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
        //
    }
}
