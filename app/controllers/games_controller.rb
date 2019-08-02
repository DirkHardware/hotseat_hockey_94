class GamesController < ApplicationController
  def index
    @games = Game.all 
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
    @game = Game.find(params[:id])
    # byebug
    players = []
    players << @game.home.username
    players << @game.away.username
    winner = players.sample 
    players.delete(winner)
    loser = players.first
    @game.update(winner: winner, loser: loser)
    # byebug
    redirect_to game_path(@game.id) 
  end 

end
