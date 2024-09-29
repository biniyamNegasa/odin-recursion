# frozen_string_literal: true

# Divide and call merge function
def merge_sort(array)
  length = array.length
  return array if length <= 1

  middle = length / 2
  first = merge_sort(array[...middle])
  second = merge_sort(array[middle..])

  merge(first, second)
end

def merge(first, second)
  first_length = first.length
  second_length = second.length
  first_start = 0
  second_start = 0
  result = []

  until first_start == first_length || second_start == second_length
    if first[first_start] <= second[second_start]
      result << first[first_start]
      first_start += 1
    else
      result << second[second_start]
      second_start += 1
    end
  end

  result.concat first[first_start..] unless first_start == first_length
  result.concat second[second_start..] unless second_start == second_length
  result
end

# p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
# p merge_sort([105, 79, 100, 110])
# p merge_sort([])