
function guardarAvance(dni, modulo){
	console.log(dni+" "+modulo);
	$.ajax({
		url:'/ajax/buscar/presidente/'+dni,
		type:'GET',
		success: function(data){
			if(data.length!=0){
				console.log(data);

				$.ajax({
					url:'/ajax/buscar/avance/'+data['entidad_id'],
					type:'GET',
					success: function(data1){
						if(data1.length!=0){

							$.ajax({
								url:'/ajax/modificar/avance',
								data:{
									entidad:data['entidad_id'],
									modulo:modulo,
									pregunta:'ssd'
								},
								headers: {'X_CSRF_TOKEN': $('#token_avance').val()},
								type:'POST',
								success: function(data1){
									
								}
							});

						}
						else{

							$.ajax({
								url:'/ajax/guardar/avance',
								data:{
									entidad:data['entidad_id'],
									modulo:modulo,
									pregunta:'ssd'
								},
								headers: {'X_CSRF_TOKEN': $('#token_avance').val()},
								type:'POST',
								success: function(data1){
									
								}
							});

						}
					}
				});
				

			}

			
		}
	});
	
	
}