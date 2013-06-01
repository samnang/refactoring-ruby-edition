require_relative '../account'
require_relative '../account_type'

describe Account do
  it "calculates interest for amount days" do
    interest_rate = 0.2
    account = Account.new(AccountType.new("normal", interest_rate))

    result = account.interest_for_amount_days(100, 30)

    expect(result).to eql(1.643835616438356)
  end
end
