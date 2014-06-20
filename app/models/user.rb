class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mobile_no, :email, :password, :remember_me
  attr_accessor :password

  has_many :addresses
  has_many :orders

  before_save :create_hashed_password
  after_save :erase_password

  def self.parse_cart_details(str="")
    str1 = str.split(',')
    final_string = Array.new

    str1.each do |x|
      str2 = x.split(/[*,=]/)
      final_string << str2
    end

    return final_string
  end

  private

  def create_hashed_password
  	
  	unless password.blank?
  		self.salt = AdminUser.create_salt(self.first_name) if salt.blank?
  		self.hashed_password = AdminUser.create_hashed_password(password, salt)
  	end
  end

  def erase_password
  	self.password = nil
  end
end
