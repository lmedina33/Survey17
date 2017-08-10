<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AvanceEncuestaModel extends Model
{
   protected $table = "avance_encuesta";

   protected $fillable = [
   		'entidad_id',
   		'modulo_avance',
   		'pregunta_avance'
   ];
}

