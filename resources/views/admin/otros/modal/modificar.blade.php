<!-- Modal -->
<div class="modal fade" id="myModalModificar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Editar Pregunta: <span id="titulo-self-modal"></span></h4>
      </div>
      <div class="modal-body">
        
        <div class="formulario">
          <div class="form-group">
            <label for="exampleInputEmail1">Título de la Pregunta</label>
            <input type="text" class="form-control" id="titulo-pregunta-modificar" >
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Módulo</label>
            
            <select name="" class="form-control" id="modulo-pregunta-modificar">
              @foreach($modulos as $modulo)
                <option value="{{$modulo->id}}">{{$modulo->modulo}} {{$modulo->nombre_modulo}}</option>
              @endforeach
            </select>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Orden de la Pregunta en Módulo</label>
            <input type="text" class="form-control" id="orden-pregunta-modificar" >
          </div>
          
          <div class="form-group">
            <label for="exampleInputEmail1">Ubicación de la Preguna en Módulo</label>
            
            <select name="" class="form-control" id="ubicacion-pregunta-modificar">
              <option value="primera">primera</option>
              <option value="intermedia">intermedia</option>
              <option value="ultima">ultima</option>
            </select>
          </div>
        </div>
        <input type="hidden" name="_token"  id="token_pmodificar" value="{{ csrf_token() }}">
      </div>
      <div class="modal-footer">
        <span style="padding-right: 20px" id="load-mp">
          <img src="{{asset('images/loading.gif')}}" width="30px">
        </span>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-default" id="guardar-cambios-pregunta">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>