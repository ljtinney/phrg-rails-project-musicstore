class PurchasesController < ApplicationController
  before_action :set_instrument
  before_action :set_purchase, only: [:show]

  def index
    @purchases = @instrument.purchase
    @customer = current_user
  end

  def new
    @purchase = Purchase.new
    @customer = current_user
  end

  def show; end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.instrument = @instrument
    @purchase.customer_id = session[:user_id]
    if @purchase.save
      redirect_to customer_path(session[:user_id])
    else
      # render error messages
      render :show
    end
  end

private

  def set_instrument
    @instrument = Instrument.find(params[:instrument_id])
  end

  def set_purchase
    @purchase = @instrument.purchases.find(params[:id])
  end

  def purchase_params
    params.require(:purchase)
          .permit(
            :music_store_id,
            :payment_type
          )
  end
end
