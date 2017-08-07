<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProgresoEncuestaModel extends Model
{
    protected $table = "progreso_encuesta";

    protected $fillable = [
    	'entidad_id',
    	'progreso'
    ];
}
