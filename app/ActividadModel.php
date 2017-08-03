<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActividadModel extends Model
{
    protected $table = "notificaciones";

    protected $fillable = [
    	'tipo_actividad',
    	'id_actividad',
    	'estado'
    ];

}
