class UsersController < ApplicationController

	layout 'header_footer'

	def new
		render 'register'
	end

	def create
		hash = params[:user]
		if hash==nil
			render 'register'
		else
			@new_user = User.create(hash)
			session[:user_id] = @new_user.id
			session[:first_name] = @new_user.first_name
			redirect_to(:controller => "fruits", :action => "index")
		end
	end
end
