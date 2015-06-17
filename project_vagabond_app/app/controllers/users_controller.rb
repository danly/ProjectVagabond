class UsersController < ApplicationController
	def new
		@user = User.new
		@cities = City.all
		render :new
	end

	def create
		@user = User.create(user_params)
		login(@user)
		if @user
			flash[:success] = "Welcome to Our App!!!"
			redirect_to root_path
		else
			flash[:error] = "Invalid input"
		end
		

	end

	def show
		@user = User.find(params[:id])
		@logs = Log.all.order("logs.created_at desc")
		render :show
	end

	def edit
		@user = User.find(params[:id])
		@cities = City.all
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
