class AddUserIDtoMealPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_plans, :user_id, :integer
  end
end
