require_relative '../select'

describe Select do
  it "be able to add options" do
    select = Select.with_option(0)
    expect(select.options).to eql([0])

    select.add_option(1)
    select.add_option(2)
    expect(select.options).to eql([0, 1, 2])
  end
end
