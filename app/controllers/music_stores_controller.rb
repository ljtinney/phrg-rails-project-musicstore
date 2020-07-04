class MusicStoresController < ApplicationController
  before_action :require_login

  def index
    @music_stores = MusicStore.all
    @customer = current_user
  end

  def new
    @music_store = MusicStore.new
  end

  def create
    @music_store = MusicStore.new(music_store_params)
    @music_store.customer_id = current_user.id
    if @music_store.save
      redirect_to music_stores_path
    else
      render :new
    end
  end

  def show
    @music_store = MusicStore.find(params[:id])
    @store_geets = @music_store.instruments.find(params[:id])
  end

  # def guitar_traits
  #   (
  #     :instrument_type,
  #     :name,
  #     :make,
  #     :model,
  #     :color,
  #     :year_made
  #   )
  # end

private

  def music_store_params
    params.require(:music_store)
          .permit(
            :name,
            :address
          )
  end
end
