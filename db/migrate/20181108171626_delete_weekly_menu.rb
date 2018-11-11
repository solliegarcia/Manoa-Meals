class DeleteWeeklyMenu < ActiveRecord::Migration[5.2]
  def change
    drop_table :weekly_menus
  end
end
