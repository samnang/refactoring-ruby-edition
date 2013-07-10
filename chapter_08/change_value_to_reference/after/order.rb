class Order
  def initialize(customer_name)
    @customer = Customer.with_name(customer_name)
  end
  
  def customer
    @customer.name
  end

  def customer=(customer_name)
    @customer = Customer.with_name(customer_name)
  end

  def self.number_of_orders_for(orders, customer)
    orders.select{|order| order.customer == customer}.size
  end
end

class Customer
  attr_accessor :name

  Instances = {}

  def initialize(name)
    @name = name
  end

  def store
    Instances[name] = self
  end

  def self.with_name(name)
    Instances[name]
  end

  def self.load_customers
    new("Samnang").store
    new("another customer").store
  end
end
