require_relative '../app'

describe "App" do
  it "calculates distance traveled" do
    app = App.new(10, 20, 3, 4)

    expect(app.distance_traveled(5)).to eql(161.0)
  end
end
