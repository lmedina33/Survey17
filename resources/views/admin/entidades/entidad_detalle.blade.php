@extends('admin/base-admin')

@section('contenedor')

<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>{{$entidad->nombre_entidad}}</b>
		</div>
	</div>

	<div class="col-md-12">
		<table class="table table-condensed">
			<thead>
				<tr>
					<th style="width: 150px">Nombre de Entidad/</th>
					<th>{{$entidad->nombre_entidad}}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>Detalle/</th>
					<td>
						
						<div class="row">
							<div class="col-md-7">
								<div>
									<b>Tipo de Pregunta:</b> {{$entidad->nombre_entidad}}
								</div>
								<div>
									<b>Slug:</b>  <a href="{{url('admin/entidad')}}/{{$entidad->slug}}/{{$entidad->id}}">{{$entidad->slug}}</a>
								</div>
								
								<div>
									<b>Creada:</b> {{$entidad->created_at}}
								</div>
								<div>
									<b>Modificada:</b> {{$entidad->updated_at}}
								</div>
							</div>
							<div class="col-md-5 text-right" style="margin-top: 1em">
								<button class="btn btn-default"> <span class="glyphicon glyphicon-edit"></span> Editar Entidad</button>
								<button class="btn btn-default"> <span class="glyphicon glyphicon-trash"></span> Eliminar Entidad</button>
							</div>
						</div>

					</td>
				</tr>
			</tbody>
		</table>
	</div>

</div>

@endsection