class Customer < ApplicationRecord
  has_many :purchases
  has_many :instruments, through: :purchases
  has_many :music_stores, through: :purchases
  has_secure_password
  validates :name, presence: true, uniqueness: true
end
