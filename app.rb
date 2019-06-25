require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @user_input = params["user_input"]
    @piglatinizer = PigLatinizer.new(@user_input)
    
    erb :results
  end
  
  get '/results' do
    erb :results
  end
end