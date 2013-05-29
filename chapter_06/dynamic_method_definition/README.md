## Dynamic Method Definition
You have methods that can be defined more concisely if defined dynamically.

*Define the methods dynamically.*

```ruby
def failure
  self.state = :failure
end

def error
  self.state = :error
end

          ||
          ||
          ||
         _||_
         \  /
          \/

def_each :failure, :error do |method_name|
  self.state = method_name
end
```
