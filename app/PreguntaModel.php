<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PreguntaModel extends Model
{
    protected $table = "preguntas";
    
    protected $fillable = [
    	'titulo_pregunta',
    	'tipo_pregunta'
    ];
}
