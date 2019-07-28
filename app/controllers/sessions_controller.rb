class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:user][:username])
    # byebug
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
