require 'sinatra'
require './lib/torosVacas'
get '/' do
  erb :showOptions
end
get '/ingresarCodigo' do
  erb :mainview
end
get '/iniciar' do
  $codigoSecreto=params[:codigo]
  erb :jugarview
end
post '/verificar' do
  $torosVacas=TorosVacas.new
  $intento=params[:intento]
  erb :verificarcodigo
end
