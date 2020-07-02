class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= Customer.find_by(id: session[:user_id])
  end

  def require_login
    return unless session[:user_id].nil?

    redirect_to root_path
  end
end
