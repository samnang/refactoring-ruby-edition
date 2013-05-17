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

    print_details(outstanding)
  end

  def print_banner
    puts "*************************"
    puts "***** Customer Owes *****"
    puts "*************************"
  end

  def print_details(outstanding)
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end
end
