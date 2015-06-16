class WelcomeController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
  	@current_city = @user.current_city
  end
end
