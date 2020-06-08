require 'sinatra'
require './lib/torosVacas'
get '/' do
  $codigoSecreto=nil
  $intento=nil
  $codigoSecretoOk=false
  $torosVacas=TorosVacas.new
  $nroIntentos=10
  $listaIntentos=[]
  $prueba=nil
  $intentosHechos=0
  $nombreUsuario='Guest'
  $esInvitado=true
  erb :showOptions
end
get '/ingresarCodigo' do
  if((params[:numeroDeIntentos]).to_i !=0 )
    $nroIntentos=(params[:numeroDeIntentos]).to_i
  end
  erb :mainview
end

get '/iniciar' do
  if($codigoSecreto==nil)
    $codigoSecreto= (rand(1000...10000)).to_s
    $codigoSecretoOk=true
  end  
  if($codigoSecretoOk==false)
   $codigoSecreto=params[:codigo]
  end
    erb :jugarview
end

post '/verificar' do
  $intento=params[:intento]
  erb :verificarcodigo
end

get '/resultadofinal' do
  if($respuesta[0]==4 && $nombreUsuario!='Guest')
    content = ("#{$nombreUsuario}\t#{$intentosHechos}\n")
    f = File.open('ranking.txt', 'a')
    f.write(content)
    f.close
  end
  erb :resultadofinal
end

get '/tipoDePartida' do
  if($esInvitado==false)
    $nombreUsuario=params[:username]
  end
  erb :tipopartida
end

get '/elegirOponente' do
  if((params[:numeroDeIntentos]).to_i !=0)
    $nroIntentos=(params[:numeroDeIntentos]).to_i
  end
  erb:elegirOponente
end

get '/username' do
  erb :username
end


