require('sinatra') 
require('sinatra/contrib/all')
require('json')
require_relative('./models/scissor_game')

get '/' do
  erb(:home)
end



get '/game/:player1/:player2' do
  game1 = Game.new(params[:player1], params[:player2])
  @result = game1.play 
  erb( :result ) #using erb file "result" must be exactly result
end