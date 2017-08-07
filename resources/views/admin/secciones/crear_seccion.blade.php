@extends('admin/base-admin')

@section('contenedor')

<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Crear Sección</b>
		</div>
	</div>
	<div class="row-fluid">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Tipo de Encuesta</label>
						
						<select id="tipo_encuesta" class="form-control">
							@foreach($tipoencuestas as $tipoencuesta)
								<option value="{{$tipoencuesta->id}}">{{$tipoencuesta->tipo_encuesta}}</option>
							@endforeach
						</select>
										  
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Nombre de Sección</label>
						<input type="text" class="form-control" placeholder="Ingresar Nombre de Sección" id="nombre_seccion">
										  
					</div>
				</div>
			</div>
			
		</div>
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<div class="form-group">
							<label>Tiempo de Incio de Actividad</label>
							<input type="date" class="form-control" placeholder="Ingresar Tiempo de Inicio de Actividad" id="fecha_inicio">
											  
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<div class="form-group">
							<label>Tiempo Final de Actividad</label>
							<input type="date" class="form-control" placeholder="Ingresar Tiempo Final de Actividiad" id="fecha_fin">
											  
						</div>
					</div>
				</div>
			</div>
			<input type="hidden" name="_token"  id="token_seccion" value="{{ csrf_token() }}">	
		</div>
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="text-center" style="margin-bottom: 1em; display: none" id="msg-sec">
						<img src="{{asset('images/loading.gif')}}" alt="" width="40px">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-default btn-custo" id="guardar_seccion">Guardar Sección</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>

	

</div>

@endsection

@section('scripts')
	<script>
		$('#guardar_seccion').click(function(){
			$.ajax({
				url:"{{url('ajax/guardar/seccion/')}}",
				headers: {'X_CSRF_TOKEN': $('#token_seccion').val()},
				data:{
					nombre_seccion: $('#nombre_seccion').val(),
					tipo_encuesta: $('#tipo_encuesta').val(),
					fecha_inicio: $('#fecha_inicio').val(),
					fecha_fin: $('#fecha_fin').val()
				},
				type:'POST',
				beforeSend: function(){
					$('#msg-sec').show();
				},
				success: function(data){
					location.href = "{{url('admin/secciones')}}";
				}

			});
		});
	</script>
@endsection