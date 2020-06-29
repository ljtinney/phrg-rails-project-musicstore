class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_type
      t.string :name
      t.integer :year_made
      t.string :color

      t.timestamps
    end
  end
end
