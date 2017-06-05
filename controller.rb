require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'

require_relative './models/rock_paper_scissors'

get '/rock/:hand1/:hand2' do
  rock_paper_scissors = RockPaperScissors.new(params[:hand1], params[:hand2])
  @result = rock_paper_scissors.rock()
  erb(:result)
end