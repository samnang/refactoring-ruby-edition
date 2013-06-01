require_relative '../person'
require_relative '../department'

describe Person do
  it "returns his/her manager" do
    john = Person.new
    john.department = Department.new("Samnang")

    expect(john.department.manager).to eql("Samnang")
  end
end
