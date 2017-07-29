<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PreguntaModel extends Model
{
    protected $table = "preguntas";
    
    protected $fillable = [
    	'modulo_id',
    	'titulo_pregunta',
    	'tipo_pregunta',
    	'slug',
    	'orden',
    	'ubicacion'
    ];
}
