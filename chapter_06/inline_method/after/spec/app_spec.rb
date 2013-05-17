require_relative '../app'

describe "App" do
  it "returns the rating base on number of late deliveries" do
    App.new(late_deliveries = 1).get_rating.should == 1

    App.new(late_deliveries = 6).get_rating.should == 2
  end
end
