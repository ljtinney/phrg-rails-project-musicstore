class InstrumentsController < ApplicationController
  before_action :require_login

  def index
    @instruments = Instrument.all
    @customer = current_user
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

private

  def customer
    @customer ||= Customer.find(params[:customer_id])
  end

  def instrument_params
    params.require(:instrument)
          .permit(
            :instrument_type,
            :name,
            :make,
            :model,
            :color,
            :year_made
          )
  end
end
