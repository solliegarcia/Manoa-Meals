class ChangeDishIDtoText < ActiveRecord::Migration[5.2]
  def change
    change_column :meal_plans, :dish_ids, :text
  end
end
