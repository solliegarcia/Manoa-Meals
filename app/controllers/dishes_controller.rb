class DishesController < ApplicationController
  def create
  	@dish = Dish.new(dish_params)
    if @dish.save
      #log_in(@user)
      flash[:success] = "Welcome to Custom Meal Maker"
      #redirect_to user_path(@user)
    else
      flash.now[:danger] = "Error creating account"
      #render 'new'
    end
  end

  def new
  	@dish = Dish.new
    #@available_dishes = nil # will be by weekly once week is implemented
    #@chosen_dishes = nil
  end

private

	def dish_params
      #params.require(:dish).permit(:created_at, :updated_at, :name, :calories, :total_fat, :cholesterol, :sodium, :carbs, :suger, :protein, :location, :course)
    end

end


=begin

<%= f.hidden_field :user_id, :value => current_user.id %>

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "calories"
    t.integer "total_fat"
    t.integer "cholesterol"
    t.integer "sodium"
    t.integer "carbs"
    t.integer "suger"
    t.integer "protein"
    t.string "location"
    t.string "course"

=end
