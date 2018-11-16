class AddCustomToDish < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :custom, :integer
  end
end
