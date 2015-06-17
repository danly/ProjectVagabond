class CitiesController < ApplicationController
	before_action :require_login
  def index
  	@cities = City.all
  	render :index
  end

  def show
    @logs = Log.all
  	@city = City.find(params[:id])
  	render :show
  end
  private
  def require_login
  	unless logged_in?
  		# flash[:error] = "You must be logged in to access this section"
  		# redirect_to login_path
  		nil
  	end
  end
end
