<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EncuestadoModel extends Model
{
    protected $table = "encuestados";
    
    protected $fillable = [
    	'entidad_id',
    	'nombre_encuestado',
    	'dni_encuestado'
    ];
}
