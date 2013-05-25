## Replace Loop with Collection Closure Method
You are processing the elements of a collection in a loop.

*Replace the loop with a collection closure method.*

```ruby
managers = []
employees.each do |e|
  managers << e if e.manager?
end

          ||
          ||
          ||
         _||_
         \  /
          \/

managers = employees.select {|e| e.manager?}
```
