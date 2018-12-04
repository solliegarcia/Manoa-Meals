class DishesController < ApplicationController
  def new_custom_dish
    @new_dish = Dish.new
    logger.debug "NEW CUSTOM DISH"
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @new_dish = Dish.new
    logger.debug "NEW FUNCTION"
    # @dish = Dish.new(params[:new_dish])
  end

end