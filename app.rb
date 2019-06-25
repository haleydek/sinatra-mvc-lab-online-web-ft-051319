require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @words = PigLatinizer.new(params[:user_phrase]).piglatinize_text
    
    erb :piglatinize
  end
  
  get '/piglatinize' do
    erb :piglatinize
  end
end