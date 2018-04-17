class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end
  

  def current_user
	current_user ||= User.find_by(id: session[:user_id])
  end

  def is_user_logged_in?
	!current_user.nil?
  	
  end
end
