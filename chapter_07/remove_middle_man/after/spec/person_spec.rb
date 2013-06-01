require_relative '../person'
require_relative '../department'

describe Person do
  it "returns his/her manager" do
    department = Department.new("Samnang")
    john = Person.new(department)

    expect(john.department.manager).to eql("Samnang")
  end
end
