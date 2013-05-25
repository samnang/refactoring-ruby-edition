## Substitute Algorithm
You want to replace an algorithm with one that is clearer.

*Replace the body of the method with the new algorithm.*

```ruby
def found_friends(people)
  friends = []
  people.each do |person|
    if(person == "Don")
      friends << "Don"
    end
    if(person == "John")
      friends << "John"
    end
    if(person == "Kent")
      friends << "Kent"
    end
  end

  return friends
end

          ||
          ||
          ||
         _||_
         \  /
          \/

def found_friends(people)
  people.select do |person|
    %w(Don John Kent).include? person
  end
end
```
