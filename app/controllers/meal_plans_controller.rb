class MealPlansController < ApplicationController
  def new
    @meal_plan = MealPlan.new
    @user = current_user
    @dishes = Dish.all # will be by weekly once week is implemented
  end

  def edit
  end
end
