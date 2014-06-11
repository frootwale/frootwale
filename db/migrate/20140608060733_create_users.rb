class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "first_name", :limit => 20
    	t.string "last_name", :limit => 20
    	t.string "mobile_no", :limit => 15
    	t.string "salt"
    	t.string "hashed_password"
    	t.timestamps
    end
  end
end
