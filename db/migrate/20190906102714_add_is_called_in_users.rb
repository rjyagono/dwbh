class AddIsCalledInUsers < ActiveRecord::Migration
  def change
  	add_column :users, :is_called, :boolean, default: false
  end
end
