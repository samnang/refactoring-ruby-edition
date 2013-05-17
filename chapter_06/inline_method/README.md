## Inline Method
A method’s body is just as clear as its name.

*Put the method’s body into the body of its callers and remove the method*.

```ruby
def get_rating
  more_than_five_late_deliveries ? 2 : 1
end

def more_than_five_late_deliveries
  @number_of_late_deliveries > 5
end

          ||
          ||
          ||
         _||_
         \  /
          \/

def get_rating
  @number_of_late_deliveries > 5 ? 2 : 1
end
```
