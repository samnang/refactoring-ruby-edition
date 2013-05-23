## Introduce Explaining Variable
You have a complicated expression.

*Put the result of the expression, or parts of the expression, in a temporary vari- able with a name that explains the purpose.*

```ruby
if platform.upcase.index("MAC") &&
   browser.upcase.index("IE") &&
   initialized? &&
   resize > 0

  # do something
end

          ||
          ||
          ||
         _||_
         \  /
          \/

is_mac_os = platform.upcase.index("MAC")
is_ie_browser = browser.upcase.index("IE")
was_resized = resize > 0
if is_mac_os && is_ie_browser && initialized? && was_resized
  # do something
end
```
