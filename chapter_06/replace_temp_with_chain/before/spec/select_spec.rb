require_relative '../select'

describe Select do
  it "be able to add options" do
    select = Select.new
    expect(subject.options).to be_empty

    select.add_option(1)
    select.add_option(2)
    expect(select.options).to eql([1, 2])
  end
end

