class Instrument < ApplicationRecord
  has_one :purchase
  belongs_to :music_store
end
