@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Progreso de Encuesta por Entidad</b>
		</div>
	</div>
	<div class="col-md-12">
		<table class="table table-condensed table-preguntas" id="lista-progreso">
			<thead>
				<tr>
					<th class="text-center">Nº</th>
					<th class="text-center">Entidad</th>
					<th class="text-center">Progreso de Encuesta</th>
					<th class="text-center">Faltante</th>
					<th class="text-center">Estado</th>
					<th class="text-center">Último Ingreso</th>
					<th class="text-center">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php $i=0; ?>
				@foreach($entidades as $entidad)
					<tr>
						<td class="text-center">{{$i=$i+1}}</td>
						<td ><a href="{{url('admin/entidad')}}/{{$entidad->slug}}/{{$entidad->id}}">{{$entidad->nombre_entidad}}</a></td>
						<td class="text-center">
							@foreach($encuestas as $encuesta)
								@if($encuesta->entidad_id==$entidad->id)
									<span style="color:blue">{{$encuesta->progreso*100}}%</span>
								@endif
							@endforeach
						</td>
						<td class="text-center">
							@foreach($encuestas as $encuesta)
								@if($encuesta->entidad_id==$entidad->id)
									<span style="color:red">{{(1.0-$encuesta->progreso)*100}}%</span>
								@endif
							@endforeach
						</td>
						<td class="text-center">
							@foreach($encuestas as $encuesta)
								@if($encuesta->entidad_id==$entidad->id)
									@if($encuesta->progreso<1.0)
										<span style="color:red"><span class="glyphicon glyphicon-warning-sign"></span> &nbsp;Pendiente Completar</span>
									@else
										<span style="color:blue"><span class="glyphicon glyphicon-ok"></span> &nbsp;Completado</span>
									@endif
								@endif
							@endforeach
						</td>
						<td class="text-center">
							@foreach($encuestas as $encuesta)
								@if($encuesta->entidad_id==$entidad->id)
									{{$encuesta->updated_at}}
								@endif
							@endforeach
						</td>
						<td class="text-center">
							<div class="btn-group btn-group-xs" role="group" aria-label="...">
							  <!-- <button type="button" class="btn btn-default">Left</button> -->
							  <button type="button" class="btn btn-default">
							  	<span class="glyphicon glyphicon-repeat"></span>
							  </button>
							  <button type="button" class="btn btn-default">
							  	<span class="glyphicon glyphicon-eye-open"></span>
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
		$('#lista-progreso').DataTable({
			"language": {
	            "info": "Mostrando _START_ de _END_ de un Total de _TOTAL_ Preguntas",
	            "lengthMenu": "Mostrar _MENU_ Preguntas",
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