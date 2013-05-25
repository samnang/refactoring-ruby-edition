require_relative '../account'

describe Account do
  it "calculates gamma" do
    app = Account.new
    app.delta = 10

    expect(app.gamma(5, 1, 10)).to eql(1020)
  end
end

