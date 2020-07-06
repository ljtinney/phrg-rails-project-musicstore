class Instrument < ApplicationRecord
  has_one :purchase
  belongs_to :music_store

  scope :rating, -> { where("year_made < 1979") }

  validates :name, :year_made, presence: true

  def self.available(music_store)
    instrument_ids_for_store = music_store.instruments.pluck(:id)
    purchased_instrument_ids_from_store = Purchase.where(music_store: music_store).pluck(:instrument_id)

    where(id: instrument_ids_for_store - purchased_instrument_ids_from_store)
  end
end
