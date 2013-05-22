require_relative '../select'

describe Select do
  it "be able to add options" do
    select = Select.with_option(0).and(1).and(2)
    expect(select.options).to eql([0, 1, 2])
  end
end
