require_relative '../app'

describe "App" do
  it "gets discount" do
    discount_order = stub(base_price: 1500)
    non_discount_order = stub(base_price: 500)

    expect(App.new(discount_order)).to be_discount
    expect(App.new(non_discount_order)).to_not be_discount
  end
end

