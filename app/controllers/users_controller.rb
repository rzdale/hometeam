class UsersController < ApplicationController

	def login
		
		@user = User.authenticate(params[:email], params[:password])
		
		if @user
			session[:user_id] = @user.id
		end

	end

end