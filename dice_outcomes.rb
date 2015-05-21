=begin
write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up.
=end

def dice_outcomes(num_dice, num_rolls)
  results = {}
  (num_dice...(num_dice * 6) + 1).each do |n|
    results[n] = 0
  end
  
  num_rolls.times do
    result = 0
    num_dice.times do
      result += rand(1..6)
    end
    results[result] += 1
  end

  results.each do | outcome, num |
    puts "#{outcome}: " + ("#" * num)
  end
end

dice_outcomes(3, 100)