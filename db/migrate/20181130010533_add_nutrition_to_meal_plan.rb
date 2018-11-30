class AddNutritionToMealPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_plans, :nutrition, :text
  end
end
