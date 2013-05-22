## Replace Temp with Query
You are using a temporary variable to hold the result of an expression.

*Extract the expression into a method. Replace all references to the temp with the expression. The new method can then be used in other methods.*

```ruby
base_price = @quantity * @item_price
if base_price > 1000
  base_price * 0.95
else
  base_price * 0.98
end

          ||
          ||
          ||
         _||_
         \  /
          \/

if base_price > 1000
  base_price * 0.95
else
  base_price * 0.98
end

def base_price
  @quantity * @item_price
end
```

