class AddNameToMealPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_plans, :name, :string
    add_column :meal_plans, :course, :string
    add_column :meal_plans, :date, :datetime
    add_column :meal_plans, :location, :string
  end
end
