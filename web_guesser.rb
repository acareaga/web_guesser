require 'sinatra/reloader'
require 'sinatra'

get '/' do
  rand_num = rand(100)
  "The SECRET NUMBER is #{rand_num}"
end
