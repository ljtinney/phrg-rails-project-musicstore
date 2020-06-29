class MusicStoresController < ApplicationController
  def index
    @music_stores = MusicStore.all
  end

  def new
    @music_store = MusicStore.new
  end
end
