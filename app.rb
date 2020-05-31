require 'sinatra'

get '/' do
  erb :showOptions
end
get '/ingresarCodigo' do
  erb :mainview
end
get '/iniciar' do
  $codigoSecreto=params[:intento]
  erb :jugarview
end
post '/verificar' do
  $intento=params[:intento]
  $respuesta=$torosVacas.revisar($codigoSecreto,$intento)
  erb :verificarcodigo
end
