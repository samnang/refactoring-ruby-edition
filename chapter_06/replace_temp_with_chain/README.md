## Replace Temp with Chain
You are using a temporary variable to hold the result of an expression.

*Change the methods to support chaining, thus removing the need for a temp.*

```ruby
mock = Mock.new
expectation = mock.expects(:a_method_name)
expectation.with("arguments")
expectation.returns([1, :array])

          ||
          ||
          ||
         _||_
         \  /
          \/

mock = Mock.new
mock.expects(:a_method_name).with("arguments").returns([1, :array])
```
