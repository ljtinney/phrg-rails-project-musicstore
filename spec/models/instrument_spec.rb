require 'rails_helper'

RSpec.describe Instrument, :type => :model do
  describe "is not valid" do

    it "without a name" do
      expect(build :instrument, name: nil).to be_invalid
    end

    it "without an instrument year_made" do
      expect(build :instrument, year_made: nil).to be_invalid
    end

    it "without belonging to a Music Store" do
      expect(build :instrument, music_store: nil).to be_invalid
    end
  end

  it "is valid", :aggregate_failures do
    expect(build :instrument, instrument_type: nil).to be_valid

    expect(build :instrument, make: nil).to be_valid
    expect(build :instrument, model: nil).to be_valid
    expect(build :instrument, color: nil).to be_valid

  end

  it "has a valid factory" do
    expect(build :instrument).to be_valid
  end
end
