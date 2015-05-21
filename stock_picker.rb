=begin
Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:
=end

def stock_picker(days_array)
  best_value = 0
  best_days = []

  (0..days_array.length).each do |day|
    (day + 1..days_array.length).each do |sell|
      if days_array[sell].to_i - days_array[day].to_i > best_value
        best_value = days_array[sell] - days_array[day]
        best_days[0] = day
        best_days[1] = sell
      end
    end
  end
  return best_days
end

print stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])