require 'digest/sha1'
class AdminUser < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.authenticate_user(mobile_no="" , password="")
  	user = User.find_by_mobile_no(mobile_no)
  	if user
  		if user.hashed_password == AdminUser.create_hashed_password(password, user.salt)
  			return user
  		end
  	end
  	return false
  end

  def self.create_salt(username="")
  	Digest::SHA1.hexdigest("You must know #{Time.now} as well as #{username}")
  end

  def self.create_hashed_password(password="", salt="")
  	Digest::SHA1.hexdigest("The hashed password has #{password} and #{salt}")
  end
end
