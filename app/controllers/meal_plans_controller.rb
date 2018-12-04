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
    respond_to do |format|
      if @meal_plan.save
        format.html { redirect_to meal_plan_url(@meal_plan), notice: "Meal Plan successfully saved." }
      else
        logger.debug "Having trouble saving..."
        render "new"
      end
    end 
    logger.debug @meal_plan.errors.full_messages
  end

  def show
    @meal_plan = MealPlan.find(params[:id])
    @chosen_dishes = Dish.where(id: @meal_plan.list_of_dishes.split(','))
    @nutrition = {  'calories'    => @chosen_dishes.map{ |dish| dish.calories }.reduce(:+),
                    'fat'         => @chosen_dishes.map{ |dish| dish.total_fat }.reduce(:+),
                    'cholesterol' => @chosen_dishes.map{ |dish| dish.cholesterol }.reduce(:+), 
                    'sodium'      => @chosen_dishes.map{ |dish| dish.sodium }.reduce(:+),
                    'carbs'       => @chosen_dishes.map{ |dish| dish.carbs }.reduce(:+),
                    'suger'       => @chosen_dishes.map{ |dish| dish.suger }.reduce(:+),
                    'protein'     => @chosen_dishes.map{ |dish| dish.protein }.reduce(:+),  
                  }
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

  def refresh_dish_list
    logger.debug "Hitting change_location"
    # Yo this is really ugly someone make this better
    if params[:location] && params[:course].blank?
      logger.debug "Location"
      @available_dishes = Dish.where(location: params[:location])
    elsif params[:course] && params[:location].blank?
      logger.debug "Course"
      @available_dishes = Dish.where(location: params[:course])
    elsif params[:location] && params[:course]
      logger.debug "Location and Course"
      @available_dishes = Dish.where(location: params[:location], course: params[:course])
    end


  end

  def edit
    logger.debug "Meal Plan #{params[:id]}"
    @meal_plan = MealPlan.find(params[:id])
  end

  private

    def meal_plan_params
      params.require(:meal_plan).permit(:id, :user_id, :list_of_dishes, :name, :course, :location, :date)
    end
end
