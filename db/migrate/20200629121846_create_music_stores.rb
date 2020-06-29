class CreateMusicStores < ActiveRecord::Migration[6.0]
  def change
    create_table :music_stores do |t|
      t.string :purchases
      t.string :instruments
      t.string :customers

      t.timestamps
    end
  end
end
