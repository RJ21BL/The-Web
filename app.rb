require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'hello world'
end

get '/secret' do
   'This is a secret page'
end

get '/mma' do
  @name = ["Leon Edwards vs Donald Cerrone", "UFC", "Mixed Martial Arts"].sample
  erb :index
end
