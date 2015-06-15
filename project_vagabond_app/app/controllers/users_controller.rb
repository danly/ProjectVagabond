class UsersController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.create(user_params)
		login(@user)
		redirect_to root_path

	end

	def show
		@user = User.find(params[:id])
		render :show
	end

	def edit
		@user = User.find(params[:id])
		render :edit
	end

	def update
		user = User.find(params[:id])
		user.update(user_params)
		redirect_to user_path(user)
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :current_city, :picture)
	end
end
