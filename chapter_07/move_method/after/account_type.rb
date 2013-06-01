class AccountType
  def initialize(type)
    @type = type
  end

  attr_reader :type

  def premium?
    type == "premium"
  end

  # ...
end
