class UsersController < ApplicationController
  def index
  end

  def new
    if User.all.count >3
      redirect_to '/login'
    end 
  end

  def create
    @user = User.create(user_params)
    redirect_to '/welcome'
  end

  def batch_create
    @user = User.create(user_params)
    if User.all.count > 3
      redirect_to '/login'
    else 
      redirect_to '/signup'
    end 
  end 

  def show
  end

  def destroy
  end

  def require_login
    redirect_to '/login' unless session.include? :user_id
  end 

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
