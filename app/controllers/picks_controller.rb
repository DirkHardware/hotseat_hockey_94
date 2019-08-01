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
    @pick = Pick.new(pick_params)
    if @pick.player.position == "F" && @pick.user.too_many_forwards?
      # redirect_to "/players"
    elsif @pick.player.position == "D" && @pick.user.too_many_defensemen?
      # redirect_to "/players"
    elsif @pick.player.position == "G" && @pick.user.too_many_goalies?
      # redirect_to "/players"
    else
      @pick.save
    end
    redirect_to "/users"
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

