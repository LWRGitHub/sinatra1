require 'sinatra'
require 'sinatra/reloader'

get '/' do
    @name = params[:name]
    erb :hellopage
end