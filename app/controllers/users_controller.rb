class UsersController < ApplicationController
  include SessionsHelper
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      logger.debug("HIT")
      redirect_to(:action => 'show')
    else
      flash.now[:danger] = "Error creating account"
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:username, :email_address, :first_name, :last_name)
    end
end
