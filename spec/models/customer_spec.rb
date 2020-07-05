require "rails_helper"

RSpec.describe Customer, :type => :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :customer, name: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :customer).to be_valid
  end
end
