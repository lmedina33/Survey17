<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EncuestaModel extends Model
{
    protected $table = "encuestas";

    protected $fillable = [
    	'entidad_id',
    	'progreso'
    ];
}
