class Instrument < ApplicationRecord
  has_one :purchase
  belongs_to :music_store

  scope :rating, -> { where("year_made < 1979") }

  validates :name, :year_made, presence: true
end
