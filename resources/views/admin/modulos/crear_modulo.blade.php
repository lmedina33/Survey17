@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Crear Módulo</b>
		</div>
	</div>
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-12">
				<div class="row">

					<div class="col-md-6">
						<div class="form-group">
							<label for="exampleInputPassword1">Sección</label>
							@if(count($secciones)>0)
								<select name="" class="form-control" id="seccion">
								   	<option value="" disabled >Escoger Sección</option>
								   	@foreach($secciones as $seccion)
								    	<option value="{{$seccion->id}}">{{$seccion->nombre_seccion}}</option>
								    @endforeach
								    	
								</select>
							@else
								<div style="padding: 7px 15px;background-color: rgba(157, 255, 0, 0.29);"> 
									<span class="glyphicon glyphicon-hand-right"></span> Debes crear Secciones
									<a href="{{url('admin/seccion/crear')}}">¡Click Aquí!</a>
								</div>
							@endif
						</div>
						
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="exampleInputPassword1">Módulo</label>
							<input type="text" class="form-control" placeholder="Ingresar Módulo" id="modulo">    
						</div>
					</div>
				</div>
				
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<label for="exampleInputPassword1">Nombre del Módulo</label>
					<input type="text" class="form-control" placeholder="Ingresar Nombre del Módulo" id="nombre_modulo">	    
				</div>
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<label for="exampleInputPassword1">Módulo Tab</label>
					<input type="text" class="form-control" placeholder="Ingresar Módulo Tab" id="tab">		    
				</div>
			</div>

			<input type="hidden" name="_token"  id="token_modulo" value="{{ csrf_token() }}">
			
			<div class="col-md-4 col-md-offset-4">
				<div class="text-center">
						<button type="submit" class="btn btn-default btn-custo" id="guardar_modulo">Guardar Módulo</button>
					</div>
			</div>
			
		</div>
	</div>

</div>
@endsection

@section('scripts')
	<script>

		$('#guardar_modulo').click(function(){


		var modulo = $('#modulo').val();
		var nombre_modulo = $('#nombre_modulo').val();
		var tab = $('#tab').val();
		var seccion = $('#seccion').val();

				$.ajax({
					url:'{{ url("admin/modulo/guardar") }}',
					data: {
						seccion: seccion,
						modulo: modulo,
						nombre_modulo: nombre_modulo,
						tab: tab
						
					},
					headers: {'X_CSRF_TOKEN': $('#token_modulo').val()},
					type: 'POST',
					success: function(data){
						location.href = "/admin/modulos";
					}
				});
		});
	</script>
@endsection