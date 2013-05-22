require_relative '../app'

describe "App" do
  it "calculates price" do
    app = App.new(10, 20.0)

    expect(app.price).to eql(196.0)
  end
end


