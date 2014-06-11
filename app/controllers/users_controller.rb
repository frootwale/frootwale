class UsersController < ApplicationController

	layout 'header_footer'

	def create
		render 'login'
	end
end
