class LogsController < ApplicationController
  def new
    @log = Log.new
    @user = current_user
    # @city = City.find_by(params[:city])
    @cities = City.all
    @city = @user.current_city
    render :new
  end

  def create
    @log = Log.create(log_params)
    @city = City.find_by city: @log.city
    redirect_to city_path(@city.id)
  end

  def show
    @log = Log.find(params[:log_id])
    @user = current_user
    render :show
  end

  def edit
    @log = Log.find(params[:log_id])
    @city = City.find_by city: @log.city
    render :edit
  end

  def update
    log = Log.find(params[:log_id])
    @city = City.find_by city: @log.city
    log.update(log_params)
    redirect_to log_path(log)
  end

  def delete
    @city = City.find_by(params[:city])
    log = Log.find(params[:log_id])
    log.delete
    redirect_to city_path(@city)
  end
  def log_params
    params.require(:log).permit(:city, :author, :body, :title, :log_id)
  end
end
