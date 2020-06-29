class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :music_store_id
      t.integer :instrument_id
      t.integer :customer_id
      t.string :cost
      t.string :payment_type

      t.timestamps
    end
  end
end
