require_relative '../currency'

describe Currency do
  it "should equal to another object because it's value object" do
    expect(Currency.new('USD')).to eql(Currency.new('USD'))
  end
end
