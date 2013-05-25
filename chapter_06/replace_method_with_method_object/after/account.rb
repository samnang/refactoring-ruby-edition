class Account
  attr_accessor :delta

  def gamma(input_val, quantity, year_to_date)
    Gamma.new(self, input_val, quantity, year_to_date).compute
  end
end

class Gamma
  attr_reader :account, :input_val, :quantity, :year_to_date

  def initialize(account, input_val, quantity, year_to_date)
    @account = account
    @input_val = input_val
    @quantity = quantity
    @year_to_date = year_to_date
  end

  def compute
    important_value3 - 2 * important_value1
  end

  private

  def important_value1
    (input_val * quantity) + account.delta
  end

  def important_value2
    result = (input_val * year_to_date) + 100
    if (year_to_date - important_value1) > 100
      result -= 20
    end

    result
  end

  def important_value3
    important_value2 * 7
  end
end
