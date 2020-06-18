require 'sinatra'
require './lib/torosVacas'
get '/' do
  $codigoSecreto=nil
  $intento=nil
  $codigoSecretoOk=false
  $torosVacas=TorosVacas.new
  $nroIntentos=10
  $listaIntentos=[]
  $intentosHechos=0
  $nombreUsuario='Guest'
  $esInvitado=true
  erb :showOptions
end

get '/ingresarCodigo' do
  if((params[:dificultad]).to_i !=0)
    $dificultad=(params[:dificultad]).to_i
  end
  erb :mainview
end

get '/iniciar' do
if($codigoSecretoOk==false)
  $codigoSecreto=params[:codigo]
end
  erb :jugarview
end

post '/verificar' do
  $intento=params[:intento]
  erb :verificarcodigo
end
get '/escogerDificultad' do
  $tipoDeDato=params[:tipo]
  erb :dificultadJuego
end

get '/resultadofinal' do
  erb :resultadofinal
end
get '/tipoDePartida' do
  if($esInvitado==false)
    $nombreUsuario=params[:username]
  end
  erb :tipopartida
end
get '/username' do
  erb :username
end
get '/tipoDeDato' do
  if((params[:numeroDeIntentos]).to_i !=0 )
    $nroIntentos=(params[:numeroDeIntentos]).to_i
  end
  erb :tipoDeDato
end
  


