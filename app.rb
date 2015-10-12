require 'sinatra'
require 'rest-client'
set :server, 'webrick'

get '/hi' do
  "Hello World!"
end

get '/' do
  erb :index
end

post '/toggle' do
  toggle_url = "http://127.0.0.1:4321/api/robots/myled/devices/led/commands/toggle"
  RestClient.post toggle_url, {}
  redirect '/'
end	