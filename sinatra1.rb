require 'sinatra' 
enable :sessions

get "/set" do
    session[:message] = params[:message]
    "session saved"
end 
get "/get" do
    session[:message]
end

get '/' do
  "Hello, World!"
end

get '/getdoc' do
    "<!DOCTYPE html>
        <head>
            <style>
                p{
                    color: red;
                }
            </style>
        </head>
        <body>
            <p>This is the /getdoc page</p>
        </body>
    </html>"
end

post "/submitted" do
    params.to_s
    if params[:username] == "Bob" && params[:password] == "pass"
        "You got it!"
    else
        "Wrong password or username!"
    end 
end
  
post "/logon" do
    params.to_s
    if params[:username] == "Bob" && params[:password] == "pass"
        "You got it!"
    else
        "Wrong password or username!"
    end  
end

post "/hello" do
    session[:message] = params[:message]
    "saved the name"
end 

get "/greet" do
    "Your #{session[:message]}"
end

get "/howMany" do
    erb :howMany
end

post "/candiles" do
    @c = params[:num].to_i
   erb :candiles 
end