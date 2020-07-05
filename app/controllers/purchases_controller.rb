class PurchasesController < ApplicationController
  before_action :set_instrument
  before_action :set_purchase, only: %i[show edit update destroy]

  def index
    @purchases = @instrument.purchase
    @customer = current_user
  end

  def new
    @purchase = Purchase.new
    @customer = current_user
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def show
    @purchase = Purchase.find(params[:purchase_id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to @purchase
    else
      render :show
    end
  end

  # def create
  #   @purchase = @instrument.purchases.build(purchase_params)

  #   respond_to do |format|
  #     if @purchase.save
  #       format.html { redirect_to instrument_purchases_path(@instrument), notice: "purchase was successfully created." }
  #       format.json { render :show, status: :created, location: @purchase }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @purchase.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   respond_to do |format|
  #     if @purchase.update(purchase_params)
  #       format.html { redirect_to instrument_purchase_path(@instrument), notice: "Purchase was successfully updated." }
  #       format.json { render :show, status: :ok, location: @purchase }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @purchase.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @purchase.destroy
  #   respond_to do |format|
  #     format.html { redirect_to instrument_posts_path(@instrument), notice: "Post was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

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
            :instrument_id,
            :customer_id,
            :cost,
            :payment_type
          )
  end
end
