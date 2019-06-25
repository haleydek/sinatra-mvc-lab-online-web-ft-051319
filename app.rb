require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @user_input = params["user_input"]
    @piglatinizer = PigLatinizer.new(@user_input)
    
    erb :piglatinize
  end
  
  get '/piglatinize' do
    erb :piglatinize
  end
end