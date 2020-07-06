class MusicStore < ApplicationRecord
  has_many :purchases
  has_many :instruments
  has_many :customers, through: :purchases

  validates :name, :address, presence: true
end
