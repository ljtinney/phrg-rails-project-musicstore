class InstrumentsController < ApplicationController
  before_action :require_login

  def index
    @instruments = Instrument.all
    @customer = current_user
  end

  def new
    @instrument = Instrument.new
  end

  def show; end
end
