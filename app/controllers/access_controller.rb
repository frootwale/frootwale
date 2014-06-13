class AccessController < ApplicationController

	layout 'header_footer'

	def login
		puts "logging in"
		render 'login'
	end

	def attempt_login
		hash = params[:user]
		current_user = AdminUser.authenticate_user(hash[:mobile_no],hash[:password])
		if current_user
			session[:user_id] = current_user.id
			session[:first_name] = current_user.first_name
			flash[:notice] = "Logged in successfull."
			redirect_to(:controller => "fruits", :action => "index")
		else
			flash[:notice] = "Login failed. Try again."
			redirect_to(:action => "login")
		end
	end

	def logout
		session[:user_id] = nil
		session[:first_name] = nil
		flash[:notice] = "Logged out successfully."
		redirect_to(:action => "login")
	end
end
