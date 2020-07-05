require "rails_helper"

RSpec.describe Purchase, :type => :model do
  describe "is not valid" do
    it "without a payment type" do
      expect(build :payment_type, name: nil).to be_invalid
    end
  end
    it "without an instrument" do
      expect(build :instrument_id, name: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :customer).to be_valid
  end
end
