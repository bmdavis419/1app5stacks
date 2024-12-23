class HomeController < ApplicationController
  def index
    @pokemon_pair = Pokemon.random_pair
    puts @pokemon_pair
  end

  def vote
    winner = Pokemon.find(params[:winner_id])
    loser = Pokemon.find(params[:loser_id])
    
    Vote.create(winner: winner, loser: loser)
    
    redirect_to root_path
  end
end