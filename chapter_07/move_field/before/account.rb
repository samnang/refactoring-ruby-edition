class Account
  def initialize(interest_rate)
    @interest_rate = interest_rate
  end

  def interest_for_amount_days(amount, days)
    @interest_rate * amount * days / 365
  end
end
