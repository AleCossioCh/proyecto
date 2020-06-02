require 'sinatra'
require './lib/torosVacas'
get '/' do
  $codigoSecreto=nil
  $torosVacas=TorosVacas.new
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
  $intento=params[:intento]
  erb :verificarcodigo
end
