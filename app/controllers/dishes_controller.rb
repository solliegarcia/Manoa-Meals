class DishesController < ApplicationController
  def create
  	@dish = Dish.new(dish_params)
    if @dish.save
      #log_in(@user)
      flash[:success] = "Welcome to Manoa Meals"
      redirect_to user_path(@user)
    else
      flash.now[:danger] = "Error creating account"
      render 'new'
    end
  end

  def new
  	@dish = Dish.new
  end

private

	def dish_params
      params.require(:dish).permit(:username, :email_address, :first_name, :last_name)
    end

end
