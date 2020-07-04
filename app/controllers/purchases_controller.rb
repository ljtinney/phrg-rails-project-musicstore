class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
    @customer = current_user
  end

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @purchase = Purchase.new
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to @purchase
    else
      render :new
    end
  end


  # @music_store = MusicStore.new(music_store_params)
  #   @music_store.customer_id = current_user.id
  #   if @music_store.save
  #     redirect_to music_stores_path
  #   else
  #     render :new
  #   end
  # end

private

  def purchase_params
    params.require(:purchase)
          .permit(
            :music_store_id,
            :instrument_id,
            :customer_id,
            :cost,
            :payment_type
          )
  end
end
