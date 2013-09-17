class AddUniqueEmailIndexToUsers < ActiveRecord::Migration
  def change
  	add_index :users, :email, unique: ßtrue
  end
end
