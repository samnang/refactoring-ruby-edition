class App
  def discount(input_value, quantity, year_to_date)
    result = input_value
    result -= 2 if input_value > 50
    result -= 1 if quantity > 100
    result -= 4 if year_to_date > 10000
    result
  end
end
