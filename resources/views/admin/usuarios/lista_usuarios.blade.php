@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Usuarios</b>
		</div>
	</div>

	<div class="col-md-12">
		<table class="table table-condensed table-preguntas" id="lista-usuarios">
			<thead>
				<tr>
					<th class="text-center">Nº</th>
					<th class="text-center">Nombres y Apellidos</th>
					<th class="text-center">Correo Electrónico</th>
					<th class="text-center">Creado</th>
					<th class="text-center">Modificado</th>
					<th class="text-center">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php $i=0; ?>
				@foreach($usuarios as $usuario)
				<tr>
					<td class="text-center">{{$i=$i+1}}</td>
					<td>{{$usuario->name}}</td>
					<td class="text-center">{{$usuario->email}}</td>
					<td class="text-center">{{$usuario->created_at}}</td>
					<td class="text-center">{{$usuario->updated_at}}</td>
					<td class="text-center">
						<div class="btn-group btn-group-xs" role="group" aria-label="...">
						  <!-- <button type="button" class="btn btn-default">Left</button> -->
						  <button type="button" class="btn btn-default btn-modificar" data-toggle="modal" data-target="#myModalModificar">
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
@endsection

@section('scripts')
	<script>
		$('#lista-usuarios').DataTable({
			"language": {
	            "info": "Mostrando _START_ de _END_ de un Total de _TOTAL_ Usuarios",
	            "lengthMenu": "Mostrar _MENU_ Usuarios",
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