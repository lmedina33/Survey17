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

							    @if(count($modulos)>0)
							    <select name="" class="form-control" id="modulo-pregunta">
							    	<option value="" disabled >Escoger Módulo</option>
							    	@foreach($modulos as $modulo)
							    		<option value="{{$modulo->id}}">{{$modulo->modulo}} {{$modulo->nombre_modulo}}</option>
							    	@endforeach
							    	
							    </select>
							    @else
									<div style="padding: 7px 15px;background-color: rgba(157, 255, 0, 0.29);"> 
										<span class="glyphicon glyphicon-hand-right"></span> Debes crear Módulos
										<a href="{{url('admin/modulo/crear')}}">¡Click Aquí!</a>
									</div>
							    @endif
							  </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							    <label for="exampleInputPassword1">Tipo de Pregunta</label>
							    @if(count($modulos)>0)
							    <select name="" class="form-control" id="tipo-pregunta">
							    	<option value="" disabled>Escoger Tipo de Pregunta</option>
							    	<option value="1">Pregunta Cerrada</option>
							    	<option value="2">Pregunta Abierta</option>
							    	<option value="3">Pregunta con Opciones y Múltiple Elección/Prioridad</option>
							    	<option value="4">Pregunta con Opciones</option>
							    	<option value="5">Pregunta con Opciones y Múltiple Elección</option>
							    	<option value="6">Pregunta con Opciones/Llenar</option>
							    	<option value="7">Pregunta Contextual</option>
							    </select>
							    @else
								<select name="" class="form-control" id="tipo-pregunta" disabled>
							    	<option value="" disabled>Escoger Tipo de Pregunta</option>
							    	
							    </select>
							    @endif
							  </div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-8">
							<div class="form-group">
							    <label for="exampleInputEmail1">Título de la  pregunta</label>
							    @if(count($modulos)>0)
							    <input type="text" class="form-control" id="titulo" placeholder="Título de la Pregunta">
							    @else
								<input type="text" class="form-control" id="titulo" placeholder="Título de la Pregunta" disabled>
							    @endif
							  </div>
						</div>
					
						<div class="col-md-4">
							<div class="form-group" id="opc" style="display: none;">
							    <label for="exampleInputPassword1">¿Cuántas Opciones?</label>
							    <div class="input-group">
								  <input type="number" class="form-control" placeholder="Nro. de Opciones" aria-describedby="basic-addon2" id="cuantas" max="6" min="0">
								  <span class="input-group-addon" id="basic-addon2">Opciones</span>
								</div>
							  </div>
						</div>
					</div>
					  

					  
					
					  
					  
					  
					  
					  <div class="opciones">
					  	<div class="form-group" id="opc1">
						    <label for="exampleInputEmail1">Opción 1</label>
						    <input type="text" class="form-control" id="opcion1" placeholder="Ingresa Opción 1">
						</div>
						<div class="form-group" id="opc2">
						    <label for="exampleInputEmail1">Opción 2</label>
						    <input type="text" class="form-control" id="opcion2" placeholder="Ingresa Opción 2">
						</div>
						<div class="form-group" id="opc3">
						    <label for="exampleInputEmail1">Opción 3</label>
						    <input type="text" class="form-control" id="opcion3" placeholder="Ingresa Opción 3">
						</div>
						<div class="form-group" id="opc4">
						    <label for="exampleInputEmail1">Opción 4</label>
						    <input type="text" class="form-control" id="opcion4" placeholder="Ingresa Opción 4">
						</div>
						<div class="form-group" id="opc5">
						    <label for="exampleInputEmail1">Opción 5</label>
						    <input type="text" class="form-control" id="opcion5" placeholder="Ingresa Opción 5">
						</div>
						<div class="form-group" id="opc6">
						    <label for="exampleInputEmail1">Opción 6</label>
						    <input type="text" class="form-control" id="opcion6" placeholder="Ingresa Opción 6">
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
							    @if(count($modulos)>0)
							    <input type="text" class="form-control" id="orden">
							    @else
								<input type="text" class="form-control" id="orden" disabled>
							    @endif
							  </div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="form-group"  >
							    <label for="exampleInputPassword1">Ubicación de la Pregunta en Módulo</label>
							    @if(count($modulos)>0)
							    <select name="" id="ubicacion" class="form-control">
							    	<option value="primera">Primera</option>
							    	<option value="intermedia">Intermedia</option>
							    	<option value="ultima">Última</option>
							    </select>
							    @else
								<select name="" id="ubicacion" class="form-control" disabled>
							    	
							    </select>
							    @endif
							  </div>
						</div>
					</div>

					<div class="msg-guardar text-center" style="display:none; margin-bottom: 1em;">
						<img src="{{asset('images/loading.gif')}}" alt="" style="width: 30px">
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-default btn-custo" id="guardar_pregunta">Guardar Pregunta</button>
					</div>
					
				</div>
			</div>

		

@endsection

@section('scripts')

	<script>

		function opciones(){
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
						$('#opc6').hide();
					}
					if($(this).val()=='6'){
						$('#opc6').show();

					}
				});
		}
		

		$('#tipo-pregunta').change(function(){
			var valor = $(this).val();

			if(valor==1){
				$('#opc').hide();
			}
			// if(valor==2){
			// 	$('#opc').hide();
			// 	console.log("sin opciones");
			// }
			if(valor==3){
				opciones();
			}
			if(valor==4){
				opciones();
				
			}
			if(valor==5){
				opciones();
				
			}
			if(valor==6){
				opciones();
				
			}
		});

		

		function ajaxObtenerOrden(){
			var idModulo = $('#modulo-pregunta').val();
			$.ajax({
				url:'{{url("ajax/obtener/orden")}}',
				data:{id:idModulo},
				type:'GET',
				success: function(data){
					if(data.length>0){
						$('#orden').val(String(data.length+1));
					}
					else{
						$('#orden').val('1');
					}
				}
			});
		}

		ajaxObtenerOrden();

		$('#modulo-pregunta').change(function(){
			ajaxObtenerOrden();
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
						opcion3: '',
						opcion4: '',
						opcion5: '',
						opcion6: ''
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					beforeSend: function(){
						$('.msg-guardar').show();
					},
					success: function(data){
						location.href = "/admin/preguntas";
					}
				});
			}

			if($('#tipo-pregunta').val()=="3"){
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
						opcion5: $('#opcion5').val(),
						opcion6: $('#opcion6').val()
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					beforeSend: function(){
						$('.msg-guardar').show();
					},
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
						opcion5: $('#opcion5').val(),
						opcion6: $('#opcion6').val()
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					beforeSend: function(){
						$('.msg-guardar').show();
					},
					success: function(data){
						location.href = "/admin/preguntas";
					}
				});
			}

			if($('#tipo-pregunta').val()=="5"){
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
						opcion5: $('#opcion5').val(),
						opcion6: $('#opcion6').val()
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					beforeSend: function(){
						$('.msg-guardar').show();
					},
					success: function(data){
						location.href = "/admin/preguntas";
					}
				});
			}

			if($('#tipo-pregunta').val()=="6"){
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
						opcion5: $('#opcion5').val(),
						opcion6: $('#opcion6').val()
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					beforeSend: function(){
						$('.msg-guardar').show();
					},
					success: function(data){
						location.href = "/admin/preguntas";
					}
				});
			}

			if($('#tipo-pregunta').val()=="2"){
				$.ajax({
					url:'{{ url("admin/pregunta/guardar") }}',
					data: {
						modulo_id: $('#modulo-pregunta').val(),
						titulo: $('#titulo').val(),
						tipo: $('#tipo-pregunta').val(),
						orden: $('#orden').val(),
						ubicacion: $('#ubicacion').val(),
						opcion1: '',
						opcion2: '',
						opcion3: '',
						opcion4: '',
						opcion5: '',
						opcion6: ''
					},
					headers: {'X_CSRF_TOKEN': $('#token_pregunta').val()},
					type: 'POST',
					beforeSend: function(){
						$('.msg-guardar').show();
					},
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