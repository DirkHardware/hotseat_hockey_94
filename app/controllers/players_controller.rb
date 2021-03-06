class PlayersController < ApplicationController
  def index
    @users = User.all
    @picks = Pick.all
    @season = Season.last 
    @players = Player.all.select do |player|
      player.picks.count < 1
    end
    # if @season.users.length < 4 
    #   redirect_to "/users/new"
    # end
  end

  def show
    @player = Player.find(params[:id])
    @pick = Pick.new 
    @users = User.all
    @players = Player.all
  end
end