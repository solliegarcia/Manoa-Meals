class WeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :weekly_menus, :meal_time, :integer
    add_column :weekly_menus, :week, :date
    add_column :weekly_menus, :dish_ids, :string
  end
end
