class Customer < ApplicationRecord
  has_secure_password

  has_many :purchases
  has_many :instruments, through: :purchases
  has_many :music_stores, through: :purchases

  validates :name, presence: true, uniqueness: true
end
