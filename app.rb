require 'sinatra'
require './lib/torosVacas'
get '/' do
  $codigoSecreto=nil
  $intento=nil
  $codigoSecretoOk=false
  $torosVacas=TorosVacas.new
  $nroIntentos=10
  $intentosHechos=0
  erb :showOptions
end

get '/ingresarCodigo' do
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

get '/resultadofinal' do
  erb :resultadofinal
end