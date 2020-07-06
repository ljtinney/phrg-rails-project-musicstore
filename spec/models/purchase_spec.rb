require "rails_helper"

RSpec.describe Purchase, :type => :model do
  it "has a valid factory" do
    expect(build :purchase).to be_valid
  end

  describe "is not valid" do
    it "without a payment type" do
      expect(build :purchase, payment_type: nil).to be_invalid
    end
    it "without an instrument" do
      expect(build :purchase, instrument: nil).to be_invalid
    end
  end
end
