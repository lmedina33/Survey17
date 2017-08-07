<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SeccionModel extends Model
{
    protected $table = "secciones";

    protected $fillable = [
    	'nombre_seccion',
    	'slug',
    	'tiempo_inicio',
    	'tiempo_fin',
    	'encuesta_id'

    ];

}
