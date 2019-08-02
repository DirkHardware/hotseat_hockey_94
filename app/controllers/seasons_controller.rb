class SeasonsController < ApplicationController
  def new
    @season = Season.new
  end

  def create 
    @season = Season.create(season_params)
    redirect_to seasons_path
  end

  def show
    @season = Season.find(params[:id])

  end

  def index
    @season = Season.last
    @users = User.all[1..4]   
    @sorted_users = @users.sort_by{|user| [-user.games_won(user.username), user.games_lost(user.username)]} 
  end

  private 
  def season_params 
    params.require(:season).permit(:number)
  end
end
