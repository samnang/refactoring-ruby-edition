## Introduce Named Parameter
The parameters in a method call cannot easily be deduced from the name of the method you are calling.

*Convert the parameter list into a Hash, and use the keys of the Hash as names for the parameters.*

```ruby
SearchCriteria.new(5, 8, "0201485672")

          ||
          ||
          ||
         _||_
         \  /
          \/

SearchCriteria.new(:author_id => 5, :publisher_id => 8, :isbn => "0201485672")
```
