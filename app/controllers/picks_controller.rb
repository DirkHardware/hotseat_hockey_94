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
      flash[:message] = "Too many forwards! Make another selection!"
    elsif @pick.player.position == "D" && @pick.user.too_many_defensemen?
      flash[:message] = "Too many defensemen! Make another selection!"
    elsif @pick.player.position == "G" && @pick.user.too_many_goalies?
      flash[:message] = "Too many goalies! Make another selection!"
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

