# Specifications for the Rails Assessment

Add notes below each checkbox with how your application has met the requirement

Requirements:
- [x] Uses Ruby on Rails

- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)
      Customers has many :purchases

- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
      Purchase belongs to :customer, :music_store, :instrument

- [x] Includes at least two has_many through relationships (e.g. a `Recipe` could `has_many` `Item`s through `Ingredient`s)
      Customer has many :instruments, through: :purchases
      Customer has many :instruments, through: :purchases
      MusicStore has many :customers, through: :purchases


- [x] Every model contains at least two simple attributes (e.g. ingredient#quantity)
      Customer (name & password)
      Instrument (instrument_type, name, make, model, color, year_made)
      Purchase (cost, payment_type)
      MusicStore (name, address)

- [x] Includes reasonable validations
      MusicStore validates :name, :address, presence: true
      Purchase validates :payment_type, presence: true
      Customer validates :name, presence: true, uniqueness: true
      Instrument validates :name, :year_made, presence: true

- [x] Includes a class level ActiveRecord scope method
      Instrument has scope :rating, -> { where("year_made < 1979") }

- [x] Includes signup, login and logout functionality (e.g. Devise)

- [x] Includes nested resource show or index (e.g. users/2/recipes)
       /instruments/:instrument_id/purchases
       /instruments/:instrument_id/purchases/new

- [x] Includes nested resource form (recipes/1/ingredients/new)
      /instruments/:instrument_id/purchases/new

- [x] Includes form display of validation errors
       /customers/new
        /signin

- [x] Includes Unit tests all of your models


- [x] Includes at least one type of Integration test (e.g. controller, request, feature, system)
      instruments_controller_spec.rb
      music_stores_controller_spec.rb

- [x] Use FactoryBot to build instances of your models in your tests

- [x] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)

- [x] Includes a `README.md` with an application description and installation guide

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below: