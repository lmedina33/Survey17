<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePresidentesFiltradosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pdtes_filtrados', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nro_documento'); 
            $table->string('apellidos_nombres');
            $table->string('correo');
            $table->string('rol');
            $table->string('codigo');
            $table->string('nombre_entidad',300);
            $table->string('proceso');
            $table->string('cnig_nombre');
            $table->string('cdpt_dpto');
            $table->string('cprv_prov');
            $table->string('cdst_distrit');

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
