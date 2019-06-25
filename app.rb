require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @user_phrase = params["user_phrase"]
    @piglatinizer = PigLatinizer.new
    
    erb :piglatinize
  end
  
  get '/piglatinize' do
    erb :piglatinize
  end
end