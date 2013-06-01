class Person
  attr_reader :name
  attr_accessor :office_area
  attr_accessor :office_number

  def telephone_number
    '(' + @office_area + ')' + @office_number
  end
end
