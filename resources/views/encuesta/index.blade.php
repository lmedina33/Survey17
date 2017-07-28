@extends('../base')

@section('contenedor')
	<br>
		<!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		  	@foreach($modulos as $modulo)
		  		@if($modulo->id==1)
		    		<li role="presentation" class="active"><a href="#{{$modulo->tab}}" aria-controls="{{$modulo->tab}}" role="tab" data-toggle="tab">{{$modulo->modulo}}: {{$modulo->nombre_modulo}}</a></li>
				@else
					<li role="presentation"><a href="#{{$modulo->tab}}" aria-controls="{{$modulo->tab}}" role="tab" data-toggle="tab">{{$modulo->modulo}}: {{$modulo->nombre_modulo}}</a></li>
		    	@endif
		    @endforeach
		    
		  </ul>

		<!-- Tab panes -->
		  <div class="tab-content">
		  	@foreach($modulos as $modulo)
		  		@if($modulo->id==1)
					<div role="tabpanel" class="tab-pane active" id="{{$modulo->tab}}">
						<ul>
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									<li>{{$pregunta->titulo_pregunta}}</li>
								@endif
							@endforeach
						</ul>
					</div>
		  		@endif
		  		@if($modulo->id==2)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						<ul>
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									<li>{{$pregunta->titulo_pregunta}}</li>
								@endif
							@endforeach
						</ul>
					</div>
		  		@endif
		  		@if($modulo->id==3)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						<ul>
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									<li>{{$pregunta->titulo_pregunta}}</li>
								@endif
							@endforeach
						</ul>
					</div>
		  		@endif
		  		@if($modulo->id==4)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						<ul>
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									<li>{{$pregunta->titulo_pregunta}}</li>
								@endif
							@endforeach
						</ul>
					</div>
		  		@endif
		  	@endforeach
		    
		    
		    
		  </div>
@endsection