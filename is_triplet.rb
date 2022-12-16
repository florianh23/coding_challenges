# frozen_string_literal: true

require 'byebug'
# Attempt 1 with array
def is_triplet(num1, num2, num3)
  p arr = [num1, num2, num3]
  p sorted = arr.sort
  p max = sorted.pop
  anc = sorted[0..].map { |num| num**2 }.inject(0, &:+)
  p anc

  anc == max**2
end

puts is_triplet(5, 4, 4)

# Tasks:
# get maximum value
# the sum of the other values squared has to be equal to the maximum value
