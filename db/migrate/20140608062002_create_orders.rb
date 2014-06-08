class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.float "total_amount"
    	t.string "status"
    	t.string "details"
    	t.timestamps
    end
  end
end
