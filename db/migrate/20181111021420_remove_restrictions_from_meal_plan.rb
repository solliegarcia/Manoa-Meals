class RemoveRestrictionsFromMealPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :meal_plans, :restrictions
  end
end
