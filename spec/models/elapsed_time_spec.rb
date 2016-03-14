require 'rails_helper'

RSpec.describe ElapsedTime, type: :model do

  it "creates a ElapsedTime with 3 days of difference" do
    elapsed_time = ElapsedTime.new(3.days.ago, Time.zone.now)
    expect(elapsed_time.days).to eq(3)
  end

  describe "ElapsedTime message" do

    it "creates a humanized message" do
      elapsed_time = ElapsedTime.new(3.days.ago, Time.zone.now)
      expect(elapsed_time.to_s).to eq("3 days")
    end
  end
end
