class LogsController < ApplicationController
  def new
    @log = Log.new
    @user = current_user
    @city = City.find_by(params[:city])
    @current_city = @user.current_city
    render :new
  end

  def create
    @log = Log.create(log_params)
    redirect_to city_path
  end

  def show
    @log = Log.find(params[:id])
    render :show
  end

  def log_params
    params.require(:log).permit(:city, :author, :body, :title)
    
  end
end
