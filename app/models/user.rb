class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :addresses
  has_many :orders
end
