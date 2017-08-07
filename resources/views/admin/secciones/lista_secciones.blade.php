@extends('admin/base-admin')

@section('contenedor')

<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Secciones</b>
		</div>
	</div>
	<div class="row-fluid">
		<div class="col-md-12">
			<table class="table table-condensed table-preguntas" id="lista-secciones">
				<thead>
					<tr>
						<th class="text-center">Nº</th>
						<th class="text-center">Nombre de Sección</th>
						<th class="text-center">Fecha Inicio Actividad</th>
						<th class="text-center">Fecha Fin Actividad</th>
						<th class="text-center">Creada</th>
						<th class="text-center">Opciones</th>
					</tr>
				</thead>
				<tbody>
					<?php $i=0; ?>
					@foreach($secciones as $seccion)
					<tr>
						<td class="text-center">{{$i=$i+1}}</td>
						<td>{{$seccion->nombre_seccion}}</td>
						<td class="text-center">{{$seccion->tiempo_inicio}}</td>
						<td class="text-center">{{$seccion->tiempo_fin}}</td>
						<td class="text-center">{{$seccion->created_at}}</td>
						<td class="text-center">
							<div class="btn-group btn-group-xs" role="group" aria-label="...">
							  <!-- <button type="button" class="btn btn-default">Left</button> -->
							  <button type="button" class="btn btn-default btn-modificar">
							  	<span class="glyphicon glyphicon-edit" ></span>
							  </button>
							  <button type="button" class="btn btn-default btn-borrar">
							  	<span class="glyphicon glyphicon-trash" ></span>
							  </button>
							</div>

						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>

</div>

@endsection

@section('scripts')
	<script>
		$('#lista-secciones').DataTable({
			"language": {
	            "info": "Mostrando _START_ de _END_ de un Total de _TOTAL_ Secciones",
	            "lengthMenu": "Mostrar _MENU_ Secciones",
	            "search": "Buscar:",
	            "paginate": {
			        "first": "Primera",
			        "last": "Ultima",
			        "next": "Siguiente",
			        "previous": "Anterior"
			    },
	        }
		});
	</script>
	
@endsection