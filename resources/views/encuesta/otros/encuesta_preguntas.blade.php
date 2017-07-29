<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
							<div class="pregunta-content preg0">
								<div class="pregunta-activa-uno text-center">
									Las Siguientes Preguntas pertenecen al <b>{{$modulo->modulo}} {{$modulo->nombre_modulo}}</b>, deben ser respondidas con mucha Responsabilidad y con la Seriedad del caso requerido.
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-warning next_pgta" data-ide="0">OK, Comprendo</button>
								</div>
							</div>

							@foreach($preguntas as $pregunta)
								<div class="pregunta-content preg{{$pregunta->orden}}">
								@if($pregunta->modulo_id==$modulo->id)
									
										<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
										
										<div class="row">
											<div class="col-md-10 col-md-offset-1">
												<table class="table table-condensed">
													<thead>
														<tr class="thead-q">
															@foreach($opciones as $opcion)
																@if($opcion->pregunta_id==$pregunta->id)
																	@if($opcion->opcion1!="false")
																		<th class="text-center">
																			a)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion2!="false")
																		<th class="text-center">
																			b)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion3!="false")
																		<th class="text-center">
																			c)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion4!="false")
																		<th class="text-center">
																			d)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion5!="false")
																		<th class="text-center">
																			e)
																		</th>
																	@else

																	@endif
																	
																@endif
															@endforeach
															
														</tr>
													</thead>
													<tbody>
														<tr class="td-q">
															@foreach($opciones as $opcion)
																@if($opcion->pregunta_id==$pregunta->id)
																	@if($opcion->opcion1!="false")
																		<td class="text-center">
																			<div class="checkbox q{{$pregunta->orden}}">
																			    <label>
																			      <input type="checkbox" data-opc="{{$pregunta->id}}1"> <b>{{$opcion->opcion1}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif

																	@if($opcion->opcion2!="false")
																		<td class="text-center">
																			<div class="checkbox q{{$pregunta->orden}}">
																			    <label>
																			      <input type="checkbox" data-opc="{{$pregunta->id}}2"> <b>{{$opcion->opcion2}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif

																	@if($opcion->opcion3!="false")
																		<td class="text-center">
																			<div class="checkbox q{{$pregunta->orden}}">
																			    <label>
																			      <input type="checkbox" data-opc="{{$pregunta->id}}3"> <b>{{$opcion->opcion3}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif

																	@if($opcion->opcion4!="false")
																		<td class="text-center">
																			<div class="checkbox q{{$pregunta->orden}}">
																			    <label>
																			      <input type="checkbox" data-opc="{{$pregunta->id}}4"> <b>{{$opcion->opcion4}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif
																	
																	@if($opcion->opcion5!="false")
																		<td class="text-center">
																			<div class="checkbox q{{$pregunta->orden}}">
																			    <label>
																			      <input type="checkbox" data-opc="{{$pregunta->id}}5"> <b>{{$opcion->opcion1}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif
																@endif
															@endforeach
															
															
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<br>

										<div class="msg text-center">
											<b></b>
										</div>

										<div class="text-center">
											@if($pregunta->ubicacion=="ultima")
												<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}">
												Guardar Respuesta
												</button>
												<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}">Siguiente Pregunta</button>
											@else
												<button class="btn btn-default guardar_rpta" data-id="{{$pregunta->orden}}">
												Guardar Respuesta
												</button>
												<button type="submit" class="btn btn-warning next_pgta" data-ide="{{$pregunta->orden}}" data-ubicacion="{{$pregunta->ubicacion}}">Siguiente Pregunta</button>
											@endif
												
											
											
										</div>
										<br>
										<br>
										
							    	
									
									
								@endif

								</div>
							@endforeach

							<div class="pregunta-content pregultima">
								<div class="pregunta-activa-uno text-center">
									Has Terminado las preguntas del <b>{{$modulo->modulo}} {{$modulo->nombre_modulo}}</b>.
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-warning next_mod" data-mod="{{$modulo->id}}">Siguiente Módulo</button>
								</div>
							</div>

							
						
					</div>