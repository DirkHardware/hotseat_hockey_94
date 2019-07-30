class UsersController < ApplicationController

  def new
    @users = User.all
    @teams = Team.all
    @seasons = Season.all
    @lastseason = Season.last
    @user = User.new
  end

  def create 
    @teams = Team.all
    @seasons = Season.all
    @lastseason = Season.last
    @user = User.new(user_params)
    if @user.valid? 
      @user.save 
      redirect_to user_path(@user.id)
    else
      flash[:message] = @user.errors.full_messages[0]
      redirect_to new_user_path
    end
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
