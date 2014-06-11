class RemoveUserTable < ActiveRecord::Migration
  def up
  	drop_table :users
  end

  def down
  	create_table :users do |t|
    	t.string "first_name", :limit => 20
    	t.string "last_name", :limit => 20
    	t.string "mobile_no", :limit => 15
    	t.string "email", :limit => 100
    	t.timestamps
    end
  end
end
