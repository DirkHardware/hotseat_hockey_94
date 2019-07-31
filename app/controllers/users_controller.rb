class UsersController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

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
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else
      flash[:message] = @user.errors.full_messages[0]
      redirect_to new_user_path
    end
  end


  def edit
  end

  def show
    @user = User.find(params[:id])
    @season = Season.last
  end

  def index
    if current_user.username != "admin" 
      redirect_to user_path(current_user)
    end
    @users = User.all
    @picks = Pick.all
    @season = Season.last
    @players = Player.all.select do |player|
      player.picks.count < 1  
    end
  end

  

  private 
  def user_params
    params.require(:user).permit(:username, :password, :team_id, :season_id)
  end

  def require_login 
    redirect_to "/login" unless session.include? :user_id 
  end

end
