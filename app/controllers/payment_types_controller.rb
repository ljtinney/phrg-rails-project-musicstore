class PaymentTypesController < ApplicationController
  def index
    @payment_types = PaymentType.all
  end
end
