class CreateWeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_menus do |t|

      t.timestamps
    end
  end
end
