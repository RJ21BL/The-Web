require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello world'
end

get '/secret' do
   'This is a secret page'
end

# get '/random-mma' do
#   @mma = ["Leon Edwards vs Donald Cerrone", "UFC", "Mixed Martial Arts"].sample
#   erb :index
# end

post '/show-mma' do
  p params
  @mma = params[:mma]
  erb :index
end

get '/mma-form' do

  erb :mma_form
end
