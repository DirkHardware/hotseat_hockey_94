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
    @seasons = Season.all  
    @season = Season.last
  end

  private 
  def season_params 
    params.require(:season).permit(:number)
  end
end
