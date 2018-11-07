class Dishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :name, :string
    add_column :dishes, :calories, :integer
    add_column :dishes, :total_fat, :integer
    add_column :dishes, :cholesterol, :integer
    add_column :dishes, :sodium, :integer
    add_column :dishes, :carbs, :integer
    add_column :dishes, :suger, :integer
    add_column :dishes, :protein, :integer
  end
end
