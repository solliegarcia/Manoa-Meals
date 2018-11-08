class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end

end
