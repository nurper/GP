class AddIndexToUsersName < ActiveRecord::Migration[5.2]
  def change
  	add_index :users, :name
  	add_index :users, :stuff_id, unique: true
  end
end
