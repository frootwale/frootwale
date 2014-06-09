class Address < ActiveRecord::Base
	attr_accessible :address
  	belongs_to :user
end
