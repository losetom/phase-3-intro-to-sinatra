require 'sinatra'

class App < Sinatra::Base
  #setting up a block of code that will run whenever a GET request comes in to the /hello path of our app

  set :default_content_type, 'application/json'

  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end

  # :num1 and :num2 are named parameters
  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { result: sum }.to_json
  end

  #We will get access to additional data from the URL in a special variable known as the params hash

end

run App