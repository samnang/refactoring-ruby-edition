## Move Eval from Runtime to Parse Time
You need to use eval but want to limit the number of times eval is necessary.

*Move the use of eval from within the method definition to defining the method
itself.*

```ruby
class Person
  def self.attr_with_default(options)
    options.each_pair do |attribute, default_value|
      define_method attribute do
        eval "@#{attribute} ||= #{default_value}"
      end
    end 
  end

  attr_with_default :emails => "[]",
                    :employee_number =>"EmployeeNumberGenerator.next"
end

          ||
          ||
          ||
         _||_
         \  /
          \/

class Person
  def self.attr_with_default(options)
    options.each_pair do |attribute, default_value|
      eval "define_method #{attribute} do
              @#{attribute} ||= #{default_value}
            end" 
    end
  end

  attr_with_default :emails => "[]",
                    :employee_number =>"EmployeeNumberGenerator.next"
end
```
