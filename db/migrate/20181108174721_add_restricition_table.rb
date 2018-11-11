class AddRestricitionTable < ActiveRecord::Migration[5.2]
  def change
    create_table :restrictions do |t|
      t.integer :meal_plan_id
      t.boolean :take_out
      t.boolean :vegan_veg
      t.integer :calorie_limit
      t.integer :fat_limit
      t.integer :cholesterol_limit
      t.integer :sodium_limit
      t.integer :carb_limit
      t.integer :suger_limit
      t.integer :protein_limit

      t.timestamps
    end


  end
end
