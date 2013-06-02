## Self Encapsulate Field
You are accessing a field directly, but the coupling to the field is becoming awk- ward.

*Create getting and setting methods for the field and use only those to access the field.*

```ruby
def total
  @base_price * (1 + @tax_rate)
end

          ||
          ||
          ||
         _||_
         \  /
          \/

attr_reader :base_price, :tax_rate

def total
  base_price * (1 + tax_rate)
end
```
