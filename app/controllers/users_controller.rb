class UsersController < ApplicationController

	def login
		
		user = User.authenticate(params[:email], params[:password])
		
		if user
			session[:user_id] = user.id
		end

		redirect_to root_path

	end

	def logout
		session.clear
		redirect_to root_path
	end


	def show
		@user = User.find(params[:id])
	end
end