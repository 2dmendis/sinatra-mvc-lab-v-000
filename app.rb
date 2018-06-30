require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @piglatinized_text = PigLatinizer.new()
    @pl_text = @piglatinized_text.piglatinize(params[:text_from_user])
    erb :pig_latin
  end 
end