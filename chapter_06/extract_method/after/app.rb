class App
  def initialize(name, orders)
    @name = name
    @orders = orders
  end

  def print_owing
    outstanding = 0.0

    print_banner

    # calculate outstanding
    @orders.each do |order|
      outstanding += order.amount
    end

    # print details
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  def print_banner
    puts "*************************"
    puts "***** Customer Owes *****"
    puts "*************************"
  end
end
