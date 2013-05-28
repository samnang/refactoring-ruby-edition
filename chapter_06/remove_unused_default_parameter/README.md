## Remove Unused Default Parameter
A parameter has a default value, but the method is never called without the parameter.

*Remove the default value.*

```ruby
def product_count_items(search_criteria=nil)
  criteria = search_criteria | @search_criteria
  ProductCountItem.find_all_by_criteria(criteria)
end

          ||
          ||
          ||
         _||_
         \  /
          \/

def product_count_items(search_criteria)
  ProductCountItem.find_all_by_criteria(search_criteria)
end
```
