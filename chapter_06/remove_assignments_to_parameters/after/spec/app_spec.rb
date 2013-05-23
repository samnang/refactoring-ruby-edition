require_relative '../app'

describe App do
  it "calculates discount" do
    app = App.new

    expect(app.discount(5, 1, 1)).to eql(5)
    expect(app.discount(5, 101, 1)).to eql(4)
    expect(app.discount(5, 1, 10001)).to eql(1)
  end
end
