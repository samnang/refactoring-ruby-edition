class Account
  def initialize(account_type, days_overdrawn)
    @account_type = account_type
    @days_overdrawn = days_overdrawn
  end

  attr_accessor :account_type, :days_overdrawn

  def overdraft_charge
    if @account_type.premium?
      result = 10
      result += (@days_overdrawn - 7) * 0.85 if @days_overdrawn > 7
      result
    else
      @days_overdrawn * 1.75
    end 
  end

  def bank_charge
    result = 4.5
    result += overdraft_charge if @days_overdrawn > 0
    result
  end
end
