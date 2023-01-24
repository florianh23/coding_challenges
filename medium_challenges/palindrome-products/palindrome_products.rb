# frozen_string_literal: true

# Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
# `palindrome_products_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/palindrome-products` directory.

# write a method splitting a given number into its single digits and put it into an array
# palindrome test: test if the reversed array is the same as the given array

def split(num)
  num_split = []
  loo = (Math.log10(num).to_i + 1)
  while loo.positive?
    temp = (num / (10**(loo - 1))).floor
    num_split.push(temp)
    num -= (10**(loo - 1)).floor * temp
    loo -= 1
  end
  num_split
end

def is_palindrome(array)
  return true if array == array.reverse
end

def remove_dublicates_sort(array)
  (arra & array).sort
end

def detect_palindrome(first, last)
  possible_output = []
  palindrome = []
  (first..last).each do |i|
    (first..last).each do |j|
      res = i * j
      tupel = [i, j]
      tmp = [res, tupel]
      palindrome.push(tmp) if is_palindrome(split(res))
      possible_output.push(res)
    end
  end
   temp = possible_output.sort
  res = merge_dublicates(palindrome).to_a
  p res.values_at(0, -1)
end

def merge_dublicates(arr)
  h = Hash.new { |hash, key| hash[key] = [] }
  arr.each { |e| h[e[0]] << e[1] }
  h
end

detect_palindrome(10, 99)
