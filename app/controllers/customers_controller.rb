class CustomersController < ApplicationController
  def index
    @customers = Customers.all
  end

  def new
    @customer = Customer.new
  end

  def show; end
end
