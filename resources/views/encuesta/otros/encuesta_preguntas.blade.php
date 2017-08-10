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

			@if($pregunta->tipo_pregunta==4)

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

												@if(is_null($opcion->opcion6))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														f)
													</th>
												@endif
																			
											@endif

										@endforeach
																	
									</tr>
								</thead>

								<tbody>
									<tr class="td-q solo-una-opcion">
										
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
																<input type="checkbox" data-opc="{{$pregunta->id}}5"> <b>{{$opcion->opcion5}}</b>
															</label>
														</div>
													</td>
												@endif

												@if(is_null($opcion->opcion6))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}6"> <b>{{$opcion->opcion6}}</b>
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
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkbox">
								Guardar Respuesta
							</button>
							<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
								Siguiente Pregunta
							</button>
						@else
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkbox">
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

			@if($pregunta->tipo_pregunta==3)

				<div class="pregunta-content preg{{$modulo->tab}}{{$pregunta->orden}}">					
					<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
												
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table class="table table-condensed">
								<thead>
									<tr class="thead-q ">
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
												@if(is_null($opcion->opcion6))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														f)
													</th>
												@endif
																			
											@endif

										@endforeach
																	
									</tr>
								</thead>

								<tbody>
									<tr class="td-q multiple-con-prioridad">
										
										@foreach($opciones as $opcion)
											
											@if($opcion->pregunta_id==$pregunta->id)
												
												@if(is_null($opcion->opcion1))
													<!-- No muestra opción-->
												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}1" data-check="a"> <b>{{$opcion->opcion1}}</b>
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
																<input type="checkbox" data-opc="{{$pregunta->id}}2" data-check="b"> <b>{{$opcion->opcion2}}</b>
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
																<input type="checkbox" data-opc="{{$pregunta->id}}3" data-check="c"> <b>{{$opcion->opcion3}}</b>
															</label>
														</div>
													</td>
												@endif

												@if(is_null($opcion->opcion4))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}4" data-check="d"> <b>{{$opcion->opcion4}}</b>
															</label>
														</div>
													</td>
												@endif

																			
												@if(is_null($opcion->opcion5))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}5" data-check="e"> <b>{{$opcion->opcion5}}</b>
															</label>
														</div>
													</td>
												@endif

												@if(is_null($opcion->opcion6))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}6" data-check="f"> <b>{{$opcion->opcion6}}</b>
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
						<div class="col-md-4 col-md-offset-4">
							<div class="form-group text-center">
								<label for="">Muestra Orden de Prioridad&nbsp;<span class="glyphicon glyphicon-hand-down"></span></label>
								<input type="text" class="form-control text-center ordenprioridad checkboxinput{{$modulo->id}}{{$pregunta->id}}" placeholder="ORDEN DE PRIORIDAD" disabled>
							</div>
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
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkboxinput">
								Guardar Respuesta
							</button>
							<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
								Siguiente Pregunta
							</button>
						@else
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkboxinput">
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

			@if($pregunta->tipo_pregunta==1)

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

												@if(is_null($opcion->opcion6))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														f)
													</th>
												@endif
																			
											@endif

										@endforeach
																	
									</tr>
								</thead>

								<tbody>
									<tr class="td-q solo-una-opcion">
										
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
																<input type="checkbox" data-opc="{{$pregunta->id}}5"> <b>{{$opcion->opcion5}}</b>
															</label>
														</div>
													</td>
												@endif

												@if(is_null($opcion->opcion6))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}6"> <b>{{$opcion->opcion6}}</b>
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
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkbox">
								Guardar Respuesta
							</button>
							<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
								Siguiente Pregunta
							</button>
						@else
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkbox">
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

			@if($pregunta->tipo_pregunta==5)

				<div class="pregunta-content preg{{$modulo->tab}}{{$pregunta->orden}}">					
					<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
												
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table class="table table-condensed">
								<thead>
									<tr class="thead-q ">
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
												@if(is_null($opcion->opcion6))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														f)
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
																<input type="checkbox" data-opc="{{$pregunta->id}}1" data-check="a"> <b>{{$opcion->opcion1}}</b>
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
																<input type="checkbox" data-opc="{{$pregunta->id}}2" data-check="b"> <b>{{$opcion->opcion2}}</b>
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
																<input type="checkbox" data-opc="{{$pregunta->id}}3" data-check="c"> <b>{{$opcion->opcion3}}</b>
															</label>
														</div>
													</td>
												@endif

												@if(is_null($opcion->opcion4))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}4" data-check="d"> <b>{{$opcion->opcion4}}</b>
															</label>
														</div>
													</td>
												@endif

																			
												@if(is_null($opcion->opcion5))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}5" data-check="e"> <b>{{$opcion->opcion5}}</b>
															</label>
														</div>
													</td>
												@endif

												@if(is_null($opcion->opcion6))

												@else
													<td class="text-center">
														<div class="checkbox q{{$modulo->id}}{{$pregunta->orden}}">
															<label>
																<input type="checkbox" data-opc="{{$pregunta->id}}6" data-check="f"> <b>{{$opcion->opcion6}}</b>
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
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkbox">
								Guardar Respuesta
							</button>
							<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
								Siguiente Pregunta
							</button>
						@else
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="checkbox">
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

			@if($pregunta->tipo_pregunta==6)

				<div class="pregunta-content preg{{$modulo->tab}}{{$pregunta->orden}}">					
					<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
												
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table class="table table-condensed">
								<thead>
									<tr class="thead-q ">
										@foreach($opciones as $opcion)

											@if($opcion->pregunta_id==$pregunta->id)

												@if(is_null($opcion->opcion1))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														{{$opcion->opcion1}}
													</th>
												@endif

												@if(is_null($opcion->opcion2))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														{{$opcion->opcion2}}
													</th>
												@endif

												@if(is_null($opcion->opcion3))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														{{$opcion->opcion3}}
													</th>
												@endif

												@if(is_null($opcion->opcion4))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														{{$opcion->opcion4}}
													</th>
												@endif

												@if(is_null($opcion->opcion5))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														{{$opcion->opcion5}}
													</th>
												@endif
												@if(is_null($opcion->opcion6))
													<!-- No Muestra Nada -->
												@else
													<th class="text-center">
														{{$opcion->opcion6}}
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
													<td>
														<div class="form-group" style="margin-bottom: 0px">
															<input type="text" class="form-control input{{$modulo->id}}{{$pregunta->id}}" placeholder="Ingresar {{$opcion->opcion1}}">
														</div>	
													</td>
													
												@endif

												@if(is_null($opcion->opcion2))
													<!-- No muestra opción-->
												@else
													<td>
														<div class="form-group" style="margin-bottom: 0px">
															<input type="text" class="form-control input{{$modulo->id}}{{$pregunta->id}}" placeholder="Ingresar {{$opcion->opcion2}}">
														</div>	
													</td>
												@endif

												@if(is_null($opcion->opcion3))
													<!-- No muestra opción-->
												@else
													<td>
														<div class="form-group" style="margin-bottom: 0px">
															<input type="text" class="form-control input{{$modulo->id}}{{$pregunta->id}}" placeholder="Ingresar {{$opcion->opcion3}}">
														</div>	
													</td>
												@endif

												@if(is_null($opcion->opcion4))

												@else
													<td>
														<div class="form-group" style="margin-bottom: 0px">
															<input type="text" class="form-control input{{$modulo->id}}{{$pregunta->id}}" placeholder="Ingresar {{$opcion->opcion4}}">
														</div>	
													</td>
												@endif

																			
												@if(is_null($opcion->opcion5))

												@else
													<td>
														<div class="form-group" style="margin-bottom: 0px">
															<input type="text" class="form-control input{{$modulo->id}}{{$pregunta->id}}" placeholder="Ingresar {{$opcion->opcion5}}">
														</div>	
													</td>
												@endif

												@if(is_null($opcion->opcion6))

												@else
													<td>
														<div class="form-group" style="margin-bottom: 0px">
															<input type="text" class="form-control input{{$modulo->id}}{{$pregunta->id}}" placeholder="Ingresar {{$opcion->opcion6}}">
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
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="input">
								Guardar Respuesta
							</button>
							<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
								Siguiente Pregunta
							</button>
						@else
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="input">
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

			@if($pregunta->tipo_pregunta==2)

				<div class="pregunta-content preg{{$modulo->tab}}{{$pregunta->orden}}">					
					<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
												
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table class="table table-condensed">

								<tbody>
									<tr class="td-q">
										
										<td>	
												<div class="form-group" style="margin-bottom: 0px">
													<input type="text" class="form-control">
												</div>
										</td>
																		
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
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="input">
								Guardar Respuesta
							</button>
							<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}" data-tab="{{$modulo->tab}}">
								Siguiente Pregunta
							</button>
						@else
							<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}" data-id-mod="{{$modulo->id}}" data-pid="{{$pregunta->id}}" data-tipe="input">
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