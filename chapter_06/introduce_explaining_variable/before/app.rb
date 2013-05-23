class App
  def initialize(quantity, item_price)
    @quantity = quantity
    @item_price = item_price
  end

  def price
    base_price - quantity_discount + shipping
  end

  private

  def base_price
    @quantity * @item_price
  end

  def quantity_discount
    [0, @quantity - 500].max * @item_price * 0.05
  end

  def shipping
    [base_price * 0.1, 100.0].min
  end
end
