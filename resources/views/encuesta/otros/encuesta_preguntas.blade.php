<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
	<div class="pregunta-content preg{{$modulo->tab}}0">
		<div class="pregunta-activa-uno text-center">
			Las Siguientes Preguntas pertenecen al <b>{{$modulo->modulo}} {{$modulo->nombre_modulo}}</b>, deben ser respondidas con mucha Responsabilidad y con la Seriedad del caso requerido.
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-warning next_pgta" data-tab="{{$modulo->tab}}" data-ide="0">OK, Comprendo</button>
		</div>
	</div>

	@foreach($preguntas as $pregunta)
	

		@if($pregunta->modulo_id==$modulo->id)	

		<div class="pregunta-content preg{{$modulo->tab}}{{$pregunta->orden}}">					
			<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
											
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<table class="table table-condensed">
							<thead>
								<tr class="thead-q">
									@foreach($opciones as $opcion)

										@if($opcion->pregunta_id==$pregunta->id)

											@if(is_null($opcion->opcion1))
												<!-- No Muestra Nada -->
											@else
												<th class="text-center">
													a)
												</th>
											@endif

											@if(is_null($opcion->opcion2))
												<!-- No Muestra Nada -->
											@else
												<th class="text-center">
													b)
												</th>
											@endif

											@if(is_null($opcion->opcion3))
												<!-- No Muestra Nada -->
											@else
												<th class="text-center">
													c)
												</th>
											@endif

											@if(is_null($opcion->opcion4))
												<!-- No Muestra Nada -->
											@else
												<th class="text-center">
													d)
												</th>
											@endif

											@if(is_null($opcion->opcion5))
												<!-- No Muestra Nada -->
											@else
												<th class="text-center">
													e)
												</th>
											@endif
																		
										@endif

									@endforeach
																
								</tr>
							</thead>

							<tbody>
								<tr class="td-q">
									
									@foreach($opciones as $opcion)
										
										@if($opcion->pregunta_id==$pregunta->id)
											
											@if(is_null($opcion->opcion1))
												<!-- No muestra opción-->
											@else
												<td class="text-center">
													<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
														<label>
															<input type="checkbox" data-opc="{{$pregunta->id}}1"> <b>{{$opcion->opcion1}}</b>
														</label>
													</div>
												</td>
											@endif

											@if(is_null($opcion->opcion2))
												<!-- No muestra opción-->
											@else
												<td class="text-center">
													<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
														<label>
															<input type="checkbox" data-opc="{{$pregunta->id}}2"> <b>{{$opcion->opcion2}}</b>
														</label>
													</div>
												</td>
											@endif

											@if(is_null($opcion->opcion3))
												<!-- No muestra opción-->
											@else
												<td class="text-center">
													<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
														<label>
															<input type="checkbox" data-opc="{{$pregunta->id}}3"> <b>{{$opcion->opcion3}}</b>
														</label>
													</div>
												</td>
											@endif

											@if(is_null($opcion->opcion4))

											@else
												<td class="text-center">
													<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
														<label>
															<input type="checkbox" data-opc="{{$pregunta->id}}4"> <b>{{$opcion->opcion4}}</b>
														</label>
													</div>
												</td>
											@endif

																		
											@if(is_null($opcion->opcion5))

											@else
												<td class="text-center">
													<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
														<label>
															<input type="checkbox" data-opc="{{$pregunta->id}}5"> <b>{{$opcion->opcion1}}</b>
														</label>
													</div>
												</td>
											@endif

										@endif

									@endforeach
																	
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<br>

				<input type="hidden" name="_token"  id="token_opc" value="{{ csrf_token() }}">
				<input type="hidden" class="ok" data-pid="{{$pregunta->id}}">

				<div class="msg text-center">
					<b></b>
				</div>

				<div class="text-center">
												
					@if($pregunta->ubicacion=="ultima")
						<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}">
							Guardar Respuesta
						</button>
						<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
							Siguiente Pregunta
						</button>
					@else
						<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}">
							Guardar Respuesta
						</button>
						<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
							Siguiente Pregunta
						</button>
					@endif
													
				</div>
				<br>
				<br>
			</div>						
		@endif
	
	@endforeach

	<div class="pregunta-content preg{{$modulo->tab}}ultima">
		<div class="pregunta-activa-uno text-center">
			Has Terminado las preguntas del <b>{{$modulo->modulo}} {{$modulo->nombre_modulo}}</b>.
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-warning next_mod" data-mod="{{$modulo->id}}">
				Siguiente Módulo
			</button>
		</div>	
	</div>
	
</div>