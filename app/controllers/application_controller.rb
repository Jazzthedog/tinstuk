class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    if session[:user_id] == nil
      redirect_to root_path
    end
  end

  helper_method :require_login # will use it in the User's controller as a before_action
  helper_method :current_user  # makes this method available to whole application
end
