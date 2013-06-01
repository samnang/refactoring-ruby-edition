class Account
  def initialize(account_type, days_overdrawn)
    @account_type = account_type
    @days_overdrawn = days_overdrawn
  end

  attr_accessor :account_type, :days_overdrawn

  def overdraft_charge
    @account_type.overdraft_charge(@days_overdrawn)
  end

  def bank_charge
    result = 4.5
    result += overdraft_charge if @days_overdrawn > 0
    result
  end
end
