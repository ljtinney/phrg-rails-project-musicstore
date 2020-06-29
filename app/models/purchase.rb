class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :music_store
  belongs_to :instrument
end
