@extends('admin/base-admin')

@section('contenedor')
	<div class="row-fluid">
		<div class="row-fluid">
			<div class="col-md-12 subtitle text-center" style="margin-bottom: 0">
				<b>Panel Principal</b>
			</div>
		</div>

		
		<div class="row-fluid" >
			<div class="col-md-12" style="padding-top: 15px; padding-bottom: 15px">
				<div class="row">
					<div class="col-md-8 " style="padding-right: 7px">
						<div class="panel panel-default panel-panel">
						  <div class="panel-body">
						    <div class="row">
						    	<div class="col-md-3 text-justify">
						    		
						    		<span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;El Gráfico muestra la <b>Cantidad de Entidades que han llegado a llenar su Encuesta al 100%</b>, clasificadas de acuerdo al Gobierno que pertenecen <b>[Gob. Central, Gob. Local, Gob. Regional]</b>.
						    		<br>
						    		<br>
						    		<button class="btn btn-warning"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Actualizar Gráfico</button>
						    	</div>
						    	<div class="col-md-9">
						    		<div class="chart-container" style="position: relative; height:19vh; width:38.5vw">
									    <canvas id="myChart"></canvas>
									</div>
						    	</div>
						    </div>
						    
						  </div>
						</div>
					</div>
					<div class="col-md-4" style="padding-left: 7px">
						<div class="list-group">
						  <a  class="list-group-item active">
						    <div class="row">
						    	<div class="col-md-10">
						    		Actividad Reciente
						    	</div>
						    	<div class="col-md-2 text-right">
						    		<span class="glyphicon glyphicon-menu-hamburger icon-panel"></span>
						    	</div>
						    </div> 
						  </a>
						  <div style="height: 244px; overflow-y: auto;">
						  		@if(count($notificaciones)>0)
								
								@foreach($notificaciones as $notificacion)
									@if($notificacion->tipo_actividad=="Entidad")
										@foreach($entidades as $entidad)
											@if($entidad->id==$notificacion->id_actividad)
							  					<a href="#" class="list-group-item">
							    					<div class="row">
							      						<div class="col-md-12" style="color:#34495e">	
															<div style="font-size: 0.9em">	
																La Entidad: <b>{{$entidad->nombre_entidad}}</b> ha llenado sus datos.
									      					</div>
									      					<div>
									      						<small style="color:#95a5a6"><span class="glyphicon glyphicon-time"></span> {{$notificacion->created_at}}</small>
									      					</div>
							      						</div>
							      					</div>
							  					</a>
							  				@endif
					      				@endforeach
					      			@endif
			      				@endforeach
			      				
							@else

							@endif
							  
						  </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12" style="background-color: #f6f6f6; padding-top: 15px; padding-bottom: 15px">
				<div class="row">
					<div class="col-md-4">
						<div class="panel panel-default panel-subpanel">
						  <div class="panel-body">
						    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto similique dolore harum. Dolore ullam error, dicta eos asperiores fugiat recusandae voluptatibus, repellendus, impedit sunt distinctio non harum, qui eum! Sunt!
						  </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default panel-subpanel">
						  <div class="panel-body">
						    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet, impedit? Incidunt cum fuga natus deserunt beatae, eos omnis eligendi delectus eveniet ipsum perspiciatis dolore officia enim quaerat, doloremque explicabo.
						  </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default panel-subpanel">
						  <div class="panel-body">
						    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam, consectetur at, adipisci nemo architecto voluptate minima atque aliquam libero laudantium illum consequatur dolores nihil sapiente consequuntur dicta molestias necessitatibus iste!
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
@endsection

@section('scripts')
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
	<script>
		$.ajax({
			url:'{{url("ajax/obtener/entidades")}}',
			type:'GET',
			success: function(data){
				gc=0;
				gr=0;
				gl=0;

				for(var i=0; i<=data.length; i++){
					if(data[i]['tipo_entidad']=="Gobierno Central"){
						$.ajax({
							url:'{{url("ajax/buscar/progreso/entidad")}}/'+data[i]['id'],
							type:'GET',
							success: function(data1){
								if(data1['progreso']==1){
									gc=gc+1;
									
								}

								if(gc>0){
									console.log(gc);
								}
								
							}
						});
	
					}

					if(data[i]['tipo_entidad']=="Gobierno Regional"){
						$.ajax({
							url:'{{url("ajax/buscar/progreso/entidad")}}/'+data[i]['id'],
							type:'GET',
							success: function(data){
								if(data['progreso']==1){
									gr=gr+1;
									
								}

								if(gr>0){
									console.log(gr);
								}
							}
						});
	
					}

					if(data[i]['tipo_entidad']=="Gobierno Local"){
						$.ajax({
							url:'{{url("ajax/buscar/progreso/entidad")}}/'+data[i]['id'],
							type:'GET',
							success: function(data){
								if(data['progreso']==1){
									gl=gl+1;
									
								}

								if(gl>0){
									console.log(gl);
								}
							}
						});
	
					}

					




				}



			}
		});

		
	</script>
	<script>

			
			var ctx = document.getElementById("myChart").getContext('2d');
			//chart.canvas.parentNode.style.height = '128px';
			var myChart = new Chart(ctx, {
			    type: 'bar',
			    data: {
			        labels: ["Gobierno Central", "Gobierno Regional", "Gobierno Local"],
			        datasets: [{
			            label: 'Progreso de Encuesta',
			            data: [1,2,3],
			            backgroundColor: [
			                'rgba(255, 99, 132, 0.8)',
			                'rgba(54, 162, 235, 0.8)',
			                'rgba(255, 206, 86, 0.8)',
			                // 'rgba(75, 192, 192, 0.6)',
			                // 'rgba(153, 102, 255, 0.6)',
			                // 'rgba(255, 159, 64, 0.6)'
			            ],
			            borderColor: [
			                'rgba(255,99,132,1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                // 'rgba(75, 192, 192, 1)',
			                // 'rgba(153, 102, 255, 1)',
			                // 'rgba(255, 159, 64, 1)'
			            ],
			            borderWidth: 1
			        }]
			    },
			    options: {
			        scales: {
			            yAxes: [{
			                ticks: {
			                    beginAtZero:true
			                }
			            }]
			        }
			    }
			});
		
		
	</script>
@endsection

