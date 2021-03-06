require 'rails_helper'

RSpec.describe MusicStore, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :music_store, name: nil).to be_invalid
    end
    it "without an address" do
      expect(build :music_store, address: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :music_store).to be_valid
  end
end