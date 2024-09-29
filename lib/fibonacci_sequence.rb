# frozen_string_literal: true

# Iterative solution
def fibs(number)
  current_value = 0
  next_value = 1
  sequence = []
  number.times do |_|
    sequence << current_value

    temp = current_value
    current_value = next_value
    next_value += temp
  end
  sequence
end

# Recursive solution
def fibs_rec(number)
  if number < 1
    []
  elsif number == 1
    [number - 1]
  elsif number == 2
    [number - 2, number - 1]
  else
    result = fibs_rec(number - 1)
    result << result[-1] + result[-2]
  end
end

# p fibs(8)
# p fibs_rec(8)
# p fibs(9)
# p fibs_rec(9)
