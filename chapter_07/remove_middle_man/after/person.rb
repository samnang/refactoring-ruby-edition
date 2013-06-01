class Person
  def initialize(department)
    @department = department
  end

  def manager
    @department.manager
  end
end
