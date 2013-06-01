require_relative '../person'
require_relative '../telephone_number'

describe Person do
  it "format telephone number" do
    telephone_number = TelephoneNumber.new
    telephone_number.area_code = "123"
    telephone_number.number = "7777-8888"
    person = Person.new(telephone_number)

    expect(person.telephone_number).to eql("(123)7777-8888")
  end
end
