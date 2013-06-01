class AccountType
  def initialize(type, interest_rate)
    @type = type
    @interest_rate = interest_rate
  end

  attr_accessor :interest_rate
end
