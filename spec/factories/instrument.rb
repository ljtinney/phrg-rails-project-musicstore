FactoryBot.define do
  factory :instrument do
    instrument_type { "electric guitar" }
    name { "90's Vintage Rock" }
    make { "Fender" }
    model { "Telecaster" }
    color { "Spotted Atrocious Purple" }
    year_made { 1992 }
    music_store
  end
end