<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEntidadTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entidades', function (Blueprint $table) {
            $table->increments('id');
            // $table->integer('pregunta_id')->unsigned();
            // $table->foreign('pregunta_id')->references('id')->on('preguntas');
            $table->string('slug',300);
            $table->string('nombre_entidad',200);
            $table->string('departamento',200);
            $table->string('provincia',200);
            $table->string('distrito',200);
            
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
