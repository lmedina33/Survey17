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
					<th>
						
						<div class="row">
							<div class="col-md-8" style="padding-top: 0.4em">
								{{$entidad->nombre_entidad}}
							</div>
							<div class="col-md-4 text-right">
								<a href="{{url('/admin/entidades')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-list"></span> Lista Entidades</a>
								
							</div>
						</div>
					</th>
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
									<b>Departamento:</b> {{$entidad->departamento}}
								</div>
								<div>
									<b>Provincia:</b> {{$entidad->provincia}}
								</div>
								<div>
									<b>Distrito:</b> {{$entidad->distrito}}
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

						<hr>

						<div class="row">
							<div class="col-md-12">
								<table class="table table-condensed ">
									<thead>
										<tr>
											<th class="text-center">Titular de la Entidad</th>
											<th class="text-center">Presidente del CCI</th>
											<th class="text-center">Responsable de Comunicación/Encuestado</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-center">
												{{$titular[0]['nombre_titular']}}
											</td>
											<td class="text-center">
												{{$presidente[0]['nombre_presidente']}}
											</td>
											<td class="text-center">
												{{$responsable[0]['nombre_encuestado']}}
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						
						<div id="container"></div>
						

					</td>
				</tr>
			</tbody>
		</table>
	</div>

</div>

@endsection

@section('scripts')
	<script>
		// progressbar.js@1.0.0 version is used
		// Docs: http://progressbarjs.readthedocs.org/en/1.0.0/

		var bar = new ProgressBar.Line(container, {
		  strokeWidth: 4,
		  easing: 'easeInOut',
		  duration: 1400,
		  color: '#f1c40f',
		  trailColor: '#eee',
		  trailWidth: 1,
		  svgStyle: {width: '100%', height: '100%'},
		  text: {
		    style: {
		      // Text color.
		      // Default: same as stroke color (options.color)
		      color: '#999',
		      position: 'absolute',
		      right: '0',
		      top: '20px',
		      padding: 0,
		      margin: 0,
		      transform: null
		    },
		    autoStyleContainer: false
		  },
		  from: {color: '#FFEA82'},
		  to: {color: '#ED6A5A'},
		  step: (state, bar) => {
		    bar.setText('Progreso de Encuesta&nbsp;&nbsp; <b>' + Math.round(bar.value() * 100) + ' %</b>');
		  }
		});

		bar.animate({{$encuesta[0]['progreso']}});
	</script>
@endsection