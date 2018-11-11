class AddLocationToDish < ActiveRecord::Migration[5.2]
  def change
  	add_column :dishes, :location, :string
  end
end
