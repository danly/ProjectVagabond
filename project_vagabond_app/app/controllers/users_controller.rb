class UsersController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.create(user_params)
		redirect_to root_path
	end

	def show
		@user = User.find(params[:id])
		render :show
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :current_city)
	end
end
