class LogsController < ApplicationController
  def new
    @log = Log.new
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
