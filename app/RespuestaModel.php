<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RespuestaModel extends Model
{
    protected $table = "respuestas";

    protected $fillable = [
    	'pregunta_id',
    	'entidad_id',
    	'rpta',
    	'indique_obs'
    ];
}
