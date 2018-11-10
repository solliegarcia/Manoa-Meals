class ChangeDishesId < ActiveRecord::Migration[5.2]
  def change
    rename_column :meal_plans, :dish_ids, :list_of_dishes
  end
end
