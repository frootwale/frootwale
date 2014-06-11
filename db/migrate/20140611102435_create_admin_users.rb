class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string "username"
      t.string "hashed_password"
      t.string "salt"
      t.string "mobile_no"
      t.timestamps
    end
  end
end
