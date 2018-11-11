class AddMealPlanIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :meal_plans, :text
  end
end
