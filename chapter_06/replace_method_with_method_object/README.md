## Replace Method with Method Object
You have a long method that uses local variables in such a way that you cannot apply Extract Method.

*Turn the method into its own object so that all the local variables become instance variables on that object. You can then decompose the method into other methods on the same object.*

```ruby
class Order
  def price
    primary_base_price = 0
    secondary_base_price = 0
    tertiary_base_price = 0
    # long computation
  end
end

          ||
          ||
          ||
         _||_
         \  /
          \/

class Order
  def price
    PriceCalculator.new(self).compute
  end
end
```
