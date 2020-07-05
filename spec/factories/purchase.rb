FactoryBot.define do
  factory :purchase do
    payment_type { "cash" }
    instrument_id { "1" }
  end
end