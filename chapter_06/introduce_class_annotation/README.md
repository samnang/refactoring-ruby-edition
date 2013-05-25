## Introduce Class Annotation
You have a method whose implementation steps are so common that they can safely be hidden away.

*Declare the behavior by calling a class method from the class definition.*

```ruby
class SearchCriteria...
  def initialize(hash)
    @author_id = hash[:author_id]
    @publisher_id = hash[:publisher_id]
    @isbn = hash[:isbn]
  end
end

          ||
          ||
          ||
         _||_
         \  /
          \/

class SearchCriteria...
  hash_initializer :author_id, :publisher_id, :isbn
end
```
