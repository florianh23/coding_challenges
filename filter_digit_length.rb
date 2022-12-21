# frozen_string_literal: true

require 'byebug'

# Create a function that filters out an array to include numbers
# that only have a certain number of digits.
def filter_digit_length(arr, num)
  filter = arr.select { |x| x.to_s.length == num }
  p filter
end
filter_digit_length([32, 88, 74, 91, 300, 4050], 1)
