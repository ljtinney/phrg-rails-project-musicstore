class CustomersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: %i[new create]

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.create(user_params)
    session[:user_id] = customer.id

    redirect_to customer_path(customer)
  end

  def show
    @customer = Customer.find(params[:id])
    redirect_to root_path unless session[:user_id].present?
  end

private

  def user_params
    params.require(:customer).permit(
      :name,
      :password
    )
  end
end
