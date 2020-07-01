class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    Customer.find_by(id: session[:customer_id])
  end

  def logged_in?
    !current_user.nil?
  end

  # def current_user
  #   if session[:customer_id]
  #     @current_user ||= Customer.find(session[:customer_id])
  #   else
  #     @current_user = nil
  #   end
  # end
end
