class PicksController < ApplicationController
  def new
    @users = User.all
    @players = Player.all.select do |player|
      player.picks.count < 1
    end
    @pick = Pick.new
  end

  def create 
    @users = User.all
    @players = Player.all.select do |player|
      player.picks.count < 1
    end
    @pick = Pick.create(pick_params)
    redirect_to users_path
  end

  def show
  end

  def index
  end

  private 
  
  def pick_params
    params.require(:pick).permit(:user_id, :player_id)
  end

end

