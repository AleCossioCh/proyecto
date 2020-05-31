require 'sinatra'

get '/' do
  erb :showOptions
end
get '/ingresarCodigo' do
  erb :mainview
end


