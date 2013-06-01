require_relative '../person'

describe Person do
  it "format telephone number" do
    person = Person.new
    person.area_code = "123"
    person.number = "7777-8888"

    expect(person.telephone_number).to eql("(123)7777-8888")
  end
end
