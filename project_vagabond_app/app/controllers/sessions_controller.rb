class SessionsController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.confirm(user_params)
		if @user
			login(@user)
			redirect_to user_path(@user)
		else
			redirect_to login_path #add a flash message later
		end
	end

	def destroy
		logout
	end

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end
end
