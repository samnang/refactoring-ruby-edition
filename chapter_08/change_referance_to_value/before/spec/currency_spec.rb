require_relative '../currency'

describe Currency do
  it "can't eql to another object because it's reference object" do
    expect(Currency.new('USD')).to_not eql(Currency.new('USD'))
  end
end
