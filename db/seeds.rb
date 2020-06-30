# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Heroine.destroy_all
Instrument.destroy_all

instruments = [
  { instrument_type: "electric guitar", name: "90's Vintage Rock", make: "Fender", model: "Telecaster", color: "Spotted Atrocious Purple", year_made: 1992 },

  { instrument_type: "electric guitar", name: "50's American Vintage Supreme", make: "Fender", model: "Stratocaster", color: "Daphne Blue", year_made: "1992" },

  { instrument_type: "electric guitar", name: "Classic", make: "Gibson", model: "Les Paul", color: "Sunburst", year_made: 1992 },

  { instrument_type: "electric guitar", name: "FSR Two Tone", make: "Gretsch", model: "Electromatic Double Jet", color: "Surf Green & White", year_made: 2020},

  { instrument_type: "acoustic guitar", name: "Standard", make: "Gibson", model: "Hummingbird", color: "Cherry Sunburst", year_made: 1972 },

  { instrument_type: "acoustic guitar", name: " 224ce-K DLX", make: "Taylor", model: "Grand Auditorium Acoustic-Electric", color: "Shaded Edge Burst", year_made: 2018 },

  { instrument_type: "acoustic guitar", name: "D-45 Standard", make: "Martin", model: "Dreadnought", color: "Aged Toner", year_made: 2015 },

  { instrument_type: "acoustic guitar", name: "17 Series-000-17E", make: "Martin", model: "Auditorium Acoustic-Electric", color: "Whiskey Sunset", year_made: 2009 },

  { instrument_type: "electric bass", name: "American", make: "Fender", model: "Precision Bass", color: "Vintage Sunburst", year_made: 1968 },

  { instrument_type: "electric bass", name: "American Ultra", make: "Fender", model: "Jazz Bass", color: "Cobra Blue", year_made: 1982 },

  { instrument_type: "electric bass", name: "JMJ Custom", make: "Fender", model: "Mustang Bass", color: "Daphne Blue", year_made: 2018 },

  { instrument_type: "electric bass", name: "Music Man", make: "Ernie Ball", model: "Stingray", color: "Black", year_made: 1972 },




]

# powers.each {|power| Power.create(power)}

# heroines = [
#   {name: "Kamala Khan", super_name: "Ms. Marvel"},
#   {name: "Doreen Green", super_name: "Squirrel Girl" },
#   {name:"Gwen Stacy", super_name:"Spider-Gwen" },
#   {name:"Janet Van Dyne", super_name:"The Wasp" },
#   {name:"Wanda Maximoff", super_name:"Scarlet Witch" },
#   {name:"Carol Danvers", super_name:"Captain Marvel" },
#   {name:"Jean Grey", super_name:"Dark Phoenix" },
#   {name:"Ororo Munroe", super_name:"Storm" },
#   {name:"Shadowcat", super_name:"Kitty Pryde" },
#   {name:"Elektra", super_name:"Elektra Natchios" }
# ]
# heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# # ---------------

# heroines.each { |heroine| Heroine.create(heroine) }
