class AddMusicStoreIdToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :music_store_id, :string
  end
end
