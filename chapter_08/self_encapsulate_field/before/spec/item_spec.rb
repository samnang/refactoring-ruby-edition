require_relative '../item'

describe Item do
  let(:item) { Item.new(100, 5) }

  it "raises base price by percentage" do
    percent = 3
    result = item.raise_base_price_by(percent)

    expect(result).to eql(103.0)
  end

  it "calculates total" do
    expect(item.total).to eql(600)
  end
end
