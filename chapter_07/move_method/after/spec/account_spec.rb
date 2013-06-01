require_relative '../account'
require_relative '../account_type'

describe Account do
  def make_account(type, days_overdrawn)
    account_type = AccountType.new(type)
    Account.new(account_type, days_overdrawn)
  end

  context "premium" do
    it "calculates overdraft charge" do
      account = make_account("premium", 10)

      expect(account.overdraft_charge).to eql(12.55)
    end
  end

  it "calculates overdraft charge" do
    account = make_account("normal", 10)

    expect(account.overdraft_charge).to eql(17.5)
  end
end
