class PlayersController < ApplicationController
  def index
    @users = User.all
    @players = Player.all.select do |player|
      player.picks.count < 1
    end
  end



  def show
    @player = Player.find(params[:id])
    @pick = Pick.new 
    @users = User.all
    @players = Player.all
  end
end
