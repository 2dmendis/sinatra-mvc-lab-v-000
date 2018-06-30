require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @piglatinized_text = PigLatinizer.new()
    @pl_text = @piglatinized_text.to_piglatin(params[:user_phrase])
    erb :pig_latin
  end 
end