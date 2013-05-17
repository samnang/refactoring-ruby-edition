require 'spec_helper'
require_relative '../app'

describe "App" do
  it "prints owing" do
    name = "samnang"
    orders = [stub(amount: 10), stub(amount: 20)]

    output = redirect_stdout do
      App.new(name, orders).print_owing  
    end

    output.should == <<-EOS
*************************
***** Customer Owes *****
*************************
name: samnang
amount: 30.0
EOS
  end
end
