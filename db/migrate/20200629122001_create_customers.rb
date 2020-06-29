class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :num_of_instruments
      t.integer :num_of_purchases

      t.timestamps
    end
  end
end
