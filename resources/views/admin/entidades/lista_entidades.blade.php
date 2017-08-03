@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Entidades</b>
		</div>
	</div>
	<div class="col-md-12">
		<table class="table table-condensed table-preguntas" id="lista-entidades">
			<thead>
				<tr>
					<th class="text-center">
						Nº
					</th>
					<th class="text-center">
						Nombre de Entidad
					</th>
					<th class="text-center">
						Departamento
					</th>
					<th class="text-center">
						Provincia
					</th>
					<th class="text-center">
						Distrito
					</th>
					<th class="text-center">
						Ingreso
					</th>
					<th class="text-center">
						Opciones
					</th>
					
				</tr>
			</thead>
			<tbody>
				<?php $i=0; ?>
				
					@foreach($entidades as $entidad)
					<tr>
						<td class="text-center">{{$i=$i+1}}</td>
						<td><a href="{{url('admin/entidad')}}/{{$entidad->slug}}/{{$entidad->id}}">{{$entidad->nombre_entidad}}</a></td>
						<td class="text-center">{{$entidad->departamento}}</td>
						<td class="text-center">{{$entidad->provincia}}</td>
						<td class="text-center">{{$entidad->distrito}}</td>
						<td class="text-center">
							{{$entidad->created_at}}
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

@section('scripts')
	<script>
		$('#lista-entidades').DataTable({
			"language": {
	            "info": "Mostrando _START_ de _END_ de un Total de _TOTAL_ Entidades",
	            "lengthMenu": "Mostrar _MENU_ Entidades",
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

	<script>
		

		

		
		
	</script>
@endsection