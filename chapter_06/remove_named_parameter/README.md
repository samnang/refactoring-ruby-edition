## Remove Named Parameter
The fluency that the named parameter brings is no longer worth the complexity on the receiver.

*Convert the named parameter Hash to a standard parameter list.*

```ruby
IsbnSearch.new(:isbn => "0201485672")

          ||
          ||
          ||
         _||_
         \  /
          \/

IsbnSearch.new("0201485672")
```
