class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
    	t.string "name"
    	t.float "price"
    	t.integer "stock"
    	t.string "category"
    	t.timestamps
    end
  end
end
