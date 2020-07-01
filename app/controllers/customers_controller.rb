class CustomersController < ApplicationController
  before_action :require_login

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def show; end

  def create
    @customer = Customer.create(customer_params)
    session[:customer_id] = @customer.id
    redirect_to "/welcome"
  end

private

  def require_login
    return unless session[:customer_id].nil?

    redirect_to "/"
  end

  def customer_params
    params.require(:customer).permit(
      :first_name,
      :last_name,
      :username,
      :password
    )
  end
end
