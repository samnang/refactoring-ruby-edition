class Person
  attr_reader :name

  def initialize(telephone_number=TelephoneNumber.new)
    @telephone_number = telephone_number
  end

  def telephone_number
    @telephone_number.telephone_number
  end
end
