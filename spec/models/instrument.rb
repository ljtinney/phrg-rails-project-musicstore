require 'rails_helper'

RSpec.describe Instrument, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :instrument, name: nil).to be_invalid
    end
  end
    it "without an instrument type" do
      expect(build :instrument, instrument_type: nil).to be_invalid
    end
  end
    it "without an instrument make" do
      expect(build :instrument, make: nil).to be_invalid
    end
  end
    it "without an instrument model" do
      expect(build :instrument, model: nil).to be_invalid
    end
  end
    it "without an instrument color" do
     expect(build :instrument, color: nil).to be_invalid
    end
  end
    it "without an instrument year_made" do
      expect(build :instrument, year_made: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :instrument).to be_valid
  end
end