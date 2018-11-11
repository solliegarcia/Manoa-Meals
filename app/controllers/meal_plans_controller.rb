class MealPlansController < ApplicationController
  def new
    @meal_plan = MealPlan.new
    @user = current_user
    @dishes = Dish.all # will be by weekly once week is implemented
  end

  def create
    logger.debug("Hitting MealPlans#create")
    @meal_plan = MealPlan.new(meal_plan_params)
    logger.debug(@meal_plan.name)
    if @meal_plan.save
      
    else

    end
  end

  def edit
  end

  private

    def meal_plan_params
      params.require(:meal_plan).permit(:list_of_dishes, :name)
    end
end
