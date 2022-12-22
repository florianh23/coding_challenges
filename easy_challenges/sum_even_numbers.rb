# frozen_string_literal: true

def sum_even_nums_in_range(start, stop)
  arr = (start..stop).step(1).to_a
  even_numbers = arr.select(&:even?)
  even_numbers.reduce(:+)
end

# Test
sum_even_nums_in_range(10, 20)
