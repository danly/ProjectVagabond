class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include SessionsHelper
  protect_from_forgery with: :exception
  def flash_class(level)
  	case level
  	when :notice then "alert alert-info"
  	when :success then "alert alert-success"
  	when :error then "alert alert-error"
  	when :alert then "alert alert-error"
  	end
  end
end
