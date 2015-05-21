=begin
Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1)
=end

def roll_dice(n='1')
  total = 0
  n.to_i.times do
    total += rand(1..6)
  end
  return total
end

while true
  puts roll_dice(gets.chomp)
end