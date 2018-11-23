class MealPlansController < ApplicationController

  def new
    @meal_plan = MealPlan.new
    @user = current_user
    @dishes = Dish.all # will be by weekly once week is implemented
    @chosen_dishes = nil
  end

  def create
    logger.debug("Hitting MealPlans#create")
    @meal_plan = MealPlan.new(meal_plan_params)
    logger.debug(@meal_plan.name)
    if @meal_plan.save
      
    else

    end
  end

  def update_dish_list
    @chosen_dishes = Dish.where(id: params[:data_value])

    @nutrition =  { 'calories'    => @chosen_dishes.map{ |dish| dish.calories }.reduce(:+),
                    'fat'         => @chosen_dishes.map{ |dish| dish.total_fat }.reduce(:+),
                    'cholesterol' => @chosen_dishes.map{ |dish| dish.cholesterol }.reduce(:+), 
                    'sodium'      => @chosen_dishes.map{ |dish| dish.sodium }.reduce(:+),
                  }

    logger.debug @nutrition

    respond_to do |format|
      format.js { flash[:success] = "Reloaded targets!"}
    end
  end

  def edit
  end

  private

    def meal_plan_params
      params.require(:meal_plan).permit(:id, :list_of_dishes, :name, dish_attributes: [:id, :calories, :name])
    end
end
