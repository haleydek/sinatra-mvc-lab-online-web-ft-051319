require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @piglatinizer = PigLatinizer.new(params["user_input"])
    
    erb :results
  end
end