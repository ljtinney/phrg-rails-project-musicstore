class CreateMusicStores < ActiveRecord::Migration[6.0]
  def change
    create_table :music_stores do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
