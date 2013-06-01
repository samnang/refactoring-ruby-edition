class Person
  extend Forwardable

  attr_accessor :department

  def_delegator :@department, :manager
end
