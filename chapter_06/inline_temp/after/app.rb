class App
  def initialize(order)
    @order = order
  end

  attr_reader :order

  def discount?
    order.base_price > 1000
  end
end
