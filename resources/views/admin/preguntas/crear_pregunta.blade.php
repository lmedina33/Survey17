@extends('admin/base-admin')

@section('contenedor')

	<div class="row-fluid">
				<div class="row-fluid">
					<div class="col-md-12 subtitle text-center">
						<b>Crear Pregunta</b>
					</div>
				</div>
				<div class="col-md-9">

					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Titulo de la  pregunta</label>
					    <input type="text" class="form-control" id="titulo" placeholder="Título de la Pregunta">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Tipo de Pregunta</label>
					    <select name="" class="form-control" id="tipo-pregunta">
					    	<option value="1">Pregunta Cerrada</option>
					    	<option value="2">Pregunta Abierta</option>
					    	<option value="3">Pregunta Abierta con Opciones</option>
					    	<option value="4">Pregunta con Opciones</option>
					    </select>
					  </div>
					  <div class="form-group" id="opc" style="display: none;">
					    <label for="exampleInputPassword1">¿Cuántas Opciones?</label>
					    <div class="input-group">
						  <input type="number" class="form-control" placeholder="Ingresa Número de Opciones" aria-describedby="basic-addon2" id="cuantas" max="5" min="0">
						  <span class="input-group-addon" id="basic-addon2">Opciones</span>
						</div>
					  </div>
					  <div class="opciones">
					  	<div class="form-group" id="opc1">
						    <label for="exampleInputEmail1">Opción 1</label>
						    <input type="text" class="form-control"  placeholder="Ingresa Opción 1">
						  </div><div class="form-group" id="opc2">
						    <label for="exampleInputEmail1">Opción 2</label>
						    <input type="text" class="form-control"  placeholder="Ingresa Opción 2">
						  </div><div class="form-group" id="opc3">
						    <label for="exampleInputEmail1">Opción 3</label>
						    <input type="text" class="form-control"  placeholder="Ingresa Opción 3">
						  </div><div class="form-group" id="opc4">
						    <label for="exampleInputEmail1">Opción 4</label>
						    <input type="text" class="form-control"  placeholder="Ingresa Opción 4">
						  </div><div class="form-group" id="opc5">
						    <label for="exampleInputEmail1">Opción 5</label>
						    <input type="text" class="form-control"  placeholder="Ingresa Opción 5">
						  </div>
					  </div>
					  
					  
					 
					  <input type="hidden" name="_token"  id="token_pregunta" value="{{ csrf_token() }}">
					  
					
				</div>
				<div class="col-md-3">
					<div class="aside">
						@if(count($preguntas)>0)
							<div>{{count($preguntas)+1}}</div> <br>
							<span>Pregunta</span>
						@else
							<div>{{0+1}}</div> <br>
							<span>Pregunta</span>
						@endif



					</div>
					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-success" id="guardar_pregunta">Guardar Pregunta</button>
					</div>
					
				</div>
			</div>

		

@endsection

@section('scripts')

	<script>
		

		$('#tipo-pregunta').change(function(){
			var valor = $(this).val();

			if(valor==1){
				console.log("solo si o no");
			}
			if(valor==2){
				console.log("sin opciones");
			}
			if(valor==3){
				console.log("abierta con opciones");
			}
			if(valor==4){
				$('#opc').show();

				$('#cuantas').change(function(){
					if($(this).val()=='0'){
						$('#opc1').hide();
					}
					if($(this).val()=='1'){
						$('#opc1').show();
						$('#opc2').hide();
					}
					if($(this).val()=='2'){
						$('#opc2').show();
						$('#opc3').hide();
					}
					if($(this).val()=='3'){
						$('#opc3').show();
						$('#opc4').hide();
					}
					if($(this).val()=='4'){
						$('#opc4').show();
						$('#opc5').hide();
					}
					if($(this).val()=='5'){
						$('#opc5').show();

					}
				});
				
			}
		});

		$('#guardar_pregunta').click(function(){
			var datos = {
				titulo: $('#titulo').val(),
				tipo: $('#tipo-pregunta').val()
			};

			$.ajax({
				url:'{{ url("admin/pregunta/guardar") }}',
				data: datos,
				headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
				type: 'POST',
				success: function(data){
					location.href = "/admin/pregunta/crear";
				}
			})
		});
	</script>

@endsection

