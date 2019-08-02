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
    @users = @season.users.order(params[:sort])
  end

  private 
  def season_params 
    params.require(:season).permit(:number)
  end
end
