class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mobile_no, :email
  has_many :addresses
  has_many :orders
end
