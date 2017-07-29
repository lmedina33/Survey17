@extends('admin/base-admin')

@section('contenedor')

	<div class="row-fluid">
				<div class="row-fluid">
					<div class="col-md-12 subtitle text-center">
						<b>Crear Pregunta</b>
					</div>
				</div>
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
							    <label for="exampleInputPassword1">Módulo</label>
							    <select name="" class="form-control" id="modulo-pregunta">
							    	<option value="" disabled >Escoger Módulo</option>
							    	@foreach($modulos as $modulo)
							    		<option value="{{$modulo->id}}">{{$modulo->modulo}} {{$modulo->nombre_modulo}}</option>
							    	@endforeach
							    	
							    </select>
							  </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							    <label for="exampleInputPassword1">Tipo de Pregunta</label>
							    <select name="" class="form-control" id="tipo-pregunta">
							    	<option value="" disabled>Escoger Tipo de Pregunta</option>
							    	<option value="1">Pregunta Cerrada</option>
							    	<option value="2">Pregunta Abierta</option>
							    	<option value="3">Pregunta Abierta con Opciones</option>
							    	<option value="4">Pregunta con Opciones</option>
							    </select>
							  </div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-8">
							<div class="form-group">
							    <label for="exampleInputEmail1">Título de la  pregunta</label>
							    <input type="text" class="form-control" id="titulo" placeholder="Título de la Pregunta">
							  </div>
						</div>
					
						<div class="col-md-4">
							<div class="form-group" id="opc" style="display: none;">
							    <label for="exampleInputPassword1">¿Cuántas Opciones?</label>
							    <div class="input-group">
								  <input type="number" class="form-control" placeholder="Nro. de Opciones" aria-describedby="basic-addon2" id="cuantas" max="5" min="0">
								  <span class="input-group-addon" id="basic-addon2">Opciones</span>
								</div>
							  </div>
						</div>
					</div>
					  

					  
					
					  
					  
					  
					  
					  <div class="opciones">
					  	<div class="form-group" id="opc1">
						    <label for="exampleInputEmail1">Opción 1</label>
						    <input type="text" class="form-control" id="opcion1" placeholder="Ingresa Opción 1">
						  </div><div class="form-group" id="opc2">
						    <label for="exampleInputEmail1">Opción 2</label>
						    <input type="text" class="form-control" id="opcion2" placeholder="Ingresa Opción 2">
						  </div><div class="form-group" id="opc3">
						    <label for="exampleInputEmail1">Opción 3</label>
						    <input type="text" class="form-control" id="opcion3" placeholder="Ingresa Opción 3">
						  </div><div class="form-group" id="opc4">
						    <label for="exampleInputEmail1">Opción 4</label>
						    <input type="text" class="form-control" id="opcion4" placeholder="Ingresa Opción 4">
						  </div><div class="form-group" id="opc5">
						    <label for="exampleInputEmail1">Opción 5</label>
						    <input type="text" class="form-control" id="opcion5" placeholder="Ingresa Opción 5">
						  </div>
					  </div>
					  
					  
					 
					  <input type="hidden" name="_token"  id="token_pregunta" value="{{ csrf_token() }}">
					  
					
				</div>
				<div class="col-md-3" style="margin-top: 1.7em;">
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
					<div class="row">
						<div class="col-md-12">
							<div class="form-group"  >
							    <label for="exampleInputPassword1">Orden de la Pregunta en Módulo</label>
							    <input type="text" class="form-control" id="orden">
							  </div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="form-group"  >
							    <label for="exampleInputPassword1">Ubicación de la Pregunta en Módulo</label>
							    <select name="" id="ubicacion" class="form-control">
							    	<option value="primera">Primera</option>
							    	<option value="intermedia">Intermedia</option>
							    	<option value="ultima">Última</option>
							    </select>
							  </div>
						</div>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-success btn-custo" id="guardar_pregunta">Guardar Pregunta</button>
					</div>
					
				</div>
			</div>

		

@endsection

@section('scripts')

	<script>
		

		$('#tipo-pregunta').change(function(){
			var valor = $(this).val();

			if(valor==1){
				$('#opc').hide();
			}
			if(valor==2){
				$('#opc').hide();
				console.log("sin opciones");
			}
			if(valor==3){
				$('#opc').hide();
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

			if($('#tipo-pregunta').val()=="1"){
				$.ajax({
					url:'{{ url("admin/pregunta/guardar") }}',
					data: {
						modulo_id: $('#modulo-pregunta').val(),
						titulo: $('#titulo').val(),
						tipo: $('#tipo-pregunta').val(),
						orden: $('#orden').val(),
						ubicacion: $('#ubicacion').val(),
						opcion1: 'Si',
						opcion2: 'No',
						opcion3: 'false',
						opcion4: 'false',
						opcion5: 'false'
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					success: function(data){
						location.href = "/admin/preguntas";
					}
				});
			}

			if($('#tipo-pregunta').val()=="4"){
				$.ajax({
					url:'{{ url("admin/pregunta/guardar") }}',
					data: {
						modulo_id: $('#modulo-pregunta').val(),
						titulo: $('#titulo').val(),
						tipo: $('#tipo-pregunta').val(),
						orden: $('#orden').val(),
						ubicacion: $('#ubicacion').val(),
						opcion1: $('#opcion1').val(),
						opcion2: $('#opcion2').val(),
						opcion3: $('#opcion3').val(),
						opcion4: $('#opcion4').val(),
						opcion5: $('#opcion5').val()
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					success: function(data){
						location.href = "/admin/preguntas";
					}
				});
			}

			
		});
	</script>

@endsection

	
	
	
	

</body>
</html>