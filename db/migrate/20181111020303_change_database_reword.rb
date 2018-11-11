class ChangeDatabaseReword < ActiveRecord::Migration[5.2]
  def change
    drop_table :restrictions
  end
end
