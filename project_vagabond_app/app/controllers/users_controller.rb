class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
	end

	def user_params
	end
end