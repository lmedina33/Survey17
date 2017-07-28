@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Módulos</b>
		</div>
	</div>
	<div class="col-md-12">
		
		<table class="table table-condensed table-preguntas">
			<thead>
				<tr>
					<th class="text-center">Nº</th>
					<th class="text-center">Módulo</th>
					<th class="text-center">Nombre del Módulo</th>
					<th class="text-center">Cantidad Preguntas</th>
					<th class="text-center">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$i=0;
				?>

				@foreach($modulos as $modulo)
				<tr>
					<td class="text-center">{{$i=$i+1}}</td>
					<td class="text-center">{{$modulo->modulo}}</td>
					<td class="text-center">
						{{$modulo->nombre_modulo}}
						
					</td>
					<td>
						
					</td>
					
					<td class="text-center">
						<div class="btn-group btn-group-xs" role="group" aria-label="...">
						  <!-- <button type="button" class="btn btn-default">Left</button> -->
						  <button type="button" class="btn btn-default">
						  	<span class="glyphicon glyphicon-edit"></span>
						  </button>
						  <button type="button" class="btn btn-default">
						  	<span class="glyphicon glyphicon-trash"></span>
						  </button>
						</div>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

	</div>

</div>
@endsection