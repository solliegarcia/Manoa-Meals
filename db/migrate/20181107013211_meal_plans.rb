class MealPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_plans, :dish_ids, :string
    add_column :meal_plans, :restrictions, :string
  end
end
