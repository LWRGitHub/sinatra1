require 'sinatra'
require 'sinatra/reloder'

get '/' do
    @name = params[:name]
    erb :hellopage
end