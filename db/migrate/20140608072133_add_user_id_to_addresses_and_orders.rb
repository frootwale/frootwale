class AddUserIdToAddressesAndOrders < ActiveRecord::Migration
  def up
  	add_column("addresses", "user_id", :integer)
  	add_column("orders", "user_id", :integer)
  	add_index("addresses", "user_id")
  	add_index("orders", "user_id")
  end

  def down
  	remove_index("orders", "user_id")
  	remove_index("addresses", "user_id")
  	remove_column("orders", "user_id")
  	remove_column("addresses", "user_id")
  end
end
