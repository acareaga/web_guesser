require 'sinatra/reloader'
require 'sinatra'

SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  cheat = params["cheat"]
  message = check_guess(guess)
  answer = cheat_mode(cheat)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message, :answer => answer}
end

def check_guess(guess)
  if guess >= SECRET_NUMBER + 10
    message = "Way too high!"
  elsif guess > SECRET_NUMBER
    message = "Too high!"
  elsif guess <= SECRET_NUMBER - 10
    message = "Way too low!"
  elsif guess < SECRET_NUMBER
    message = "Too low!"
  else guess == SECRET_NUMBER
    message = "You got it right! The SECRET NUMBER is #{SECRET_NUMBER}"
  end
end

def cheat_mode(cheat)
  answer = "The SECRET NUMBER is #{SECRET_NUMBER}" if cheat == true
end
