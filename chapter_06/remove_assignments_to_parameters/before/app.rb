class App
  def discount(input_value, quantity, year_to_date)
    input_value -= 2 if input_value > 50
    input_value -= 1 if quantity > 100
    input_value -= 4 if year_to_date > 10000
    input_value
  end
end
