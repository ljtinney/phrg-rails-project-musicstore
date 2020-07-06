FactoryBot.define do
  factory :purchase do
    payment_type { "cash" }
    instrument
    customer
    music_store
  end
end