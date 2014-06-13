class Fruit < ActiveRecord::Base
	attr_accessible :name, :price, :stock, :category
end
