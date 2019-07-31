class SessionsController < ApplicationController
  def new

  end

  def create 
      @user = User.find_by(username: params[:session][:username])
      if @user && @user.authenticate(params[:session][:password])
          session[:user_id] = @user.id 
          redirect_to @user
      else
          render :new 
          flash[:message] = @user.errors.full_messages[0]
      end
  end
  def destroy 
      session[:user_id] = nil 
      redirect_to login_path
  end
end

 
