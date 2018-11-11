class AddNameToMealPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_plans, :name, :string
  end
end
