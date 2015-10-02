require 'sinatra/reloader'
require 'sinatra'

get '/' do
  number = rand(100)
  erb :index, :locals => {:number => number}
  params["guess"]
end
