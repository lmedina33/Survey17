@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Crear Tipo de Encuesta</b>
		</div>
	</div>
	<div class="col-md-12">
		<div class="form-group">
			<label for="">Nombre de Tipo de Encuesta</label>
			<input type="text" class="form-control" id="tipo_encuesta">
		</div>
	</div>
	<input type="hidden" name="_token"  id="token_tipo" value="{{ csrf_token() }}">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<button type="submit" class="btn btn-default btn-custo" id="guardar_tipo">Guardar Tipo de Encuesta</button>
			</div>
		</div>
	</div>

</div>
@endsection


@section('scripts')
	<script>

		$('#guardar_tipo').click(function(){
			
			$.ajax({
				url:'{{ url("ajax/tipo_encuesta/guardar") }}',
				headers: {'X_CSRF_TOKEN': $('#token_tipo').val()},
				data: {
					tipo_encuesta: $('#tipo_encuesta').val()			
				},
				
				type: 'POST',
				success: function(data){
					
				}
			   
			});
		});
	</script>
@endsection