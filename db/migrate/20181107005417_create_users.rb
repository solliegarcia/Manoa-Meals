class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column :username, :string, :limit => 32, :null => false
      t.column :email_address, :string
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :created_at, :timestamp

      t.timestamps
    end
  end
end
