class UsersController < ApplicationController

  def new
    @users = User.all
    @teams = Team.all
    @seasons = Season.all
    @user = User.new
  end

  def create 
    @teams = Team.all
    @seasons = Season.all
    @user = User.create!(user_params)
    redirect_to new_user_path
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  private 
  def user_params
    params.require(:user).permit(:username, :password, :team_id, :season_id)
  end

end
