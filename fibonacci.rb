=begin
Write a method fibonacci which outputs the Fibonacci Sequence out to the specified number of digits.
=end

def fibonacci(num_digits)
  returned_seq = [1]
  if num_digits == 1
    return returned_seq
  end

  returned_seq << 1

  if num_digits == 2
    return returned_seq
  end

  (2..num_digits - 1).each do |i|
    returned_seq << returned_seq[i-1] + returned_seq[i-2]
  end

  return returned_seq

end

print fibonacci(7)
