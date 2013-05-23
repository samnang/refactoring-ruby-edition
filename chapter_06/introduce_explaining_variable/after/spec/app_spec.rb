require_relative '../app'

describe "App" do
  it "calculates price" do
    app = App.new(10, 20.0)

    expect(app.price).to eql(220.0)
  end
end
