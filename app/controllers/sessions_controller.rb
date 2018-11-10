class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      flash[:success] = "Successfully logged in"
      log_in user
      redirect_to user_path(user)
    else
      flash[:danger] = "Error Logging In"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url
  end

end
