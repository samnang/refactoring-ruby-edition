class App
  def initialize(order)
    @order = order
  end

  attr_reader :order

  def discount?
    base_price = order.base_price
    return (base_price > 1000)
  end
end
