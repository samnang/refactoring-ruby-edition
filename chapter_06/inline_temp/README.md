## Inline Temp
You have a temp that is assigned to once with a simple expression, and the temp is getting in the way of other refactorings.

*Replace all references to that temp with the expression*.

```ruby
base_price = an_order.base_price
return (base_price > 1000)

          ||
          ||
          ||
         _||_
         \  /
          \/

return (an_order.base_price > 1000)
```
