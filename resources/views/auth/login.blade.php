@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="text-center logo-login">
                <h2 style="color: black; margin-bottom: 1.5em">Sistema de Encuesta</h2>
                <img src="{{asset('images/logotipo_2.png')}}" alt="">
            </div>
            <div class="panel panel-default">
                <div class="panel-heading text-center"><b>Ingresar</b></div>
                <div class="panel-body">
                    <form method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email">Correo Electrónico</label>

                            <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                            @if ($errors->has('email'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                            @endif
                            
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password">Contraseña</label>

                            
                            <input id="password" type="password" class="form-control" name="password" required>

                            @if ($errors->has('password'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                             @endif
                           
                        </div>

                        {{-- <div class="form-group">
                            
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                                    </label>
                                </div>
                            
                        </div> --}}

                        <div class="form-group">
                            
                                <button type="submit" class="btn btn-default" style="width: 100%">
                                    <b>Ingresar</b>
                                </button>

                                {{-- <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a> --}}
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
