Customer.destroy_all
Instrument.destroy_all

DATA = {
  cust_keys: %w[first_name last_name username password],
  customers: [
    ["Max", "Charles", "ConeBone69", "password"],
    ["Katy", "Perry", "KP33", "password"],
    ["Megan", "Fox", "FoxyLady123", "password"],
    ["Brian", "May", "KingOfQueen" "password"],
    ["Jeff", "Buckley","LESpizzaguy" "password"],
    ["Bruce", "Springsteen", "BossManInUSA", "password"],
    ["Emma", "Roberts", "NotJulia924", "password"],
    ["April", "O'Neil", "YellowSuitNews", "password"],
    ["Julia", "Roberts", "PrettyWomanOceans", "password"],
    ["Alex", "D'Addario", "IASIPsuperPhan", "password"],
    ["Seth", "Rogen", "EfficientPineapple", "password"],
    ["Darth", "Maul", "SithRuleGalaxy3" "password"],
    ["Nic", "Cage", "PressleyGone34" "password"],
    ["Sara", "Malakul-Lane", "23Tequillas" "password"],
  ]
  instrument_keys: %w[instrument_type name make model color year_made],
  instruments: [
["electric guitar", "90's Vintage Rock", "Fender", "Telecaster", "Spotted Atrocious Purple", 1992],
["electric guitar", "50's American Vintage", "Fender", "Stratocaster", "Daphne Blue", 1956],
["electric guitar", "Classic", "Gibson", "Les Paul", "Sunburst", 1992],
["electric guitar", "FSR Two Tone", "Gretsch", "Electromatic Double Jet", "Surf Green & White", 2020],
["acoustic guitar", "Standard", "Gibson", "Hummingbird", "Cherry Sunburst", 1972],
["acoustic guitar", "224ce-K DLX", "Taylor", "Grand Auditorium Acoustic-Electric", "Shaded Edge Burst", 2018],
["acoustic guitar", "D-45 Standard", "Martin", "Dreadnought", "Aged Toner", 2015],
["acoustic guitar", "17 Series-000-17E", "Martin", "Auditorium Acoustic-Electric", "Whiskey Sunset", 2009],
["electric bass", "American", "Fender", "Precision Bass", "Vintage Sunburst", 1968],
["electric bass", "American Ultra", "Fender", "Jazz Bass", "Cobra Blue", 1982],
["electric bass", "JMJ Custom", "Fender", "Mustang Bass", "Daphne Blue", 2018],
["electric bass", "Music Man", "Ernie Ball", "Stingray", "Black", 1972],
]

def make_customers
  DATA[:customers].each do |customer|
    new_customer = Customer.new
    customer.each_with_index do |attribute, i|
      new_customer.send(DATA[:cust_keys][i] + "=", attribute)
    end
    new_customer.save
  end
end

instruments.each { |instrument_attributes| Instrument.create(instrument_attributes) }