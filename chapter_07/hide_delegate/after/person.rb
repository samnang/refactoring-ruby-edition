class Person
  attr_accessor :department

  def manager
    @department.manager
  end
end
