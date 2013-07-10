require_relative '../order'

describe Order do
  before do
    Customer.load_customers
  end

  it "returns number of orders for customer" do
    customer = "Samnang"
    orders = [
      Order.new(customer),
      Order.new(customer),
      Order.new("another customer")
    ]

    result = Order.number_of_orders_for(orders, customer)

    expect(result).to eql(2)
  end
end
