$('.btn-modificar').click(function(){
			var id_pregunta = $(this).attr('data-id-pmodificar');

			/*Reseteando los datos en el Modal*/
			$('#titulo-self-modal').text('');
			$('#titulo-pregunta-modificar').val('');
			$('#orden-pregunta-modificar').val('');
			$('#ubicacion-pregunta-modificar').val('');

			$.ajax({
				url:'/ajax/obtener/pregunta/'+id_pregunta,
				type:'GET',
				success: function(data){
					/*Colocando los datos en el Modal*/

					$('#titulo-self-modal').text(data['titulo_pregunta']);
					$('#titulo-pregunta-modificar').val(data['titulo_pregunta']);
					$('#modulo-pregunta-modificar').val(data['modulo_id']);
					$('#orden-pregunta-modificar').val(data['orden']);
					$('#ubicacion-pregunta-modificar').val(data['ubicacion']);
				}

			});

			$('#guardar-cambios-pregunta').click(function(){
				$.ajax({
					url:'/ajax/modificar/pregunta/'+id_pregunta,
					type:'POST',
					headers: {'X_CSRF_TOKEN': $('#token_pmodificar').val()},
					data:{
						titulo:$('#titulo-pregunta-modificar').val(),
						modulo:$('#modulo-pregunta-modificar').val(),
						orden:$('#orden-pregunta-modificar').val(),
						ubicacion:$('#ubicacion-pregunta-modificar').val()
					},
					beforeSend: function(){
						$('#load-mp').show();
					},
					success: function(data){
						$('#load-mp').hide();

						if($('#hidep').val()=="1"){
							location.href = "/admin/preguntas";
						}
						else{
							var link = location.href;
							location.href = link;
						}
						
					}
				});
			});
			
		});