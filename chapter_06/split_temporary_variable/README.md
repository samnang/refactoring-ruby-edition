## Replace Temp with Query
You have a temporary variable assigned to more than once, but it is not a loop variable nor a collecting temporary variable.

*Make a separate temporary variable for each assignment.*

```ruby
temp = 2 * (@height + @width)
puts temp
temp = @height * @width
puts temp

          ||
          ||
          ||
         _||_
         \  /
          \/

perimeter = 2 * (@height + @width)
puts perimeter
area = @height * @width
puts area
```
