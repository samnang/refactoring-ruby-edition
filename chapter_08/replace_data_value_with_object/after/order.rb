class Order
  attr_accessor :customer

  def initialize(customer)
    @customer = customer
  end

  def self.number_of_orders_for(orders, customer)
    orders.select{|order| order.customer == customer}.size
  end
end
