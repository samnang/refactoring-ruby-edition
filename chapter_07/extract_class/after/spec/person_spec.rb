require_relative '../person'

describe Person do
  it "format telephone number" do
    person = Person.new
    person.office_area = "123"
    person.office_number = "7777-8888"

    expect(person.telephone_number).to eql("(123)7777-8888")
  end
end
