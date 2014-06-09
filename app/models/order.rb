class Order < ActiveRecord::Base
  attr_accessible :total_amount, :status, :details
  belongs_to :user
end
