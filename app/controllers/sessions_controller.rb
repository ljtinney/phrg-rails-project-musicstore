class SessionsController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    if (@customer = Customer.find_by(name: params[:customer][:name]))
      authenticated = @customer.authenticate(params[:customer][:password])
      if authenticated
        session[:user_id] = @customer.id

        redirect_to customer_path(@customer), notice: "Thanks for coming back, we appreciate it"
      else
        redirect_to signin_path, notice: "Name & Password do not match. Please try again"
      end
    else
      redirect_to root_path, notice: "Name & Password do not match. Please try again"
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
