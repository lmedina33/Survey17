<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ValidacionModel extends Model
{
    protected $table = "validacion";

    protected $fillable = [
    	'presidente_dni',
    	'estado'
    ];
}
