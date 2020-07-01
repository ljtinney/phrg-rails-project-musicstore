class SessionsController < ApplicationController
  def new
  end

  def create
    customer = Customer.find_by_username(params[:username])
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to "music_stores/new", notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def login; end

  def welcome; end

  def destroy
    session[:customer_id] = nil
    redirect_to "music_store/new", notice: "Logged out!"
  end
end
