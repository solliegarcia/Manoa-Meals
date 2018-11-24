class MealPlansController < ApplicationController

  def new
    @meal_plan = MealPlan.new
    @user = current_user
    @available_dishes = nil # will be by weekly once week is implemented
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
                    'carbs'       => @chosen_dishes.map{ |dish| dish.carbs }.reduce(:+),
                    'suger'       => @chosen_dishes.map{ |dish| dish.suger }.reduce(:+),
                    'protein'     => @chosen_dishes.map{ |dish| dish.protein }.reduce(:+),
                  }

    logger.debug @nutrition

    respond_to do |format|
      format.js { flash[:success] = "Added Dishes"}
    end
  end

  def change_location
    logger.debug "Hitting change_location"
    logger.debug params[:location]
    @available_dishes = Dish.where(location: params[:location])

  end

  def edit
  end

  private

    def meal_plan_params
      params.require(:meal_plan).permit(:id, :list_of_dishes, :name,)
    end
end
