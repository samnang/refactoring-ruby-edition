## Extract Method
Turn the fragment into a method whose name explains the purpose of the method.

```ruby
def print_owing(amount)
  print_banner
  puts "name: #{@name}"
  puts "amount: #{amount}"
end

          ||
          ||
          ||
         _||_
         \  /
          \/

def print_owing(amount)
  print_banner
  print_details amount
end

def print_details(amount)
  puts "name: #{@name}"
  puts "amount: #{amount}"
end
```
