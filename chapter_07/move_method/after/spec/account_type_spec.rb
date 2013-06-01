require_relative '../account'
require_relative '../account_type'

describe AccountType do
  context "premium" do
    it "calculates overdraft charge" do
      account_type = AccountType.new("premium")

      result = account_type.overdraft_charge(10)

      expect(result).to eql(12.55)
    end
  end

  it "calculates overdraft charge" do
    account_type = AccountType.new("normal")

    result = account_type.overdraft_charge(10)

    expect(result).to eql(17.5)
  end
end
