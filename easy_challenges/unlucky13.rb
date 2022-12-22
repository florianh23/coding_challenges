# frozen_string_literal: true

def unlucky_13(arr)
  arr.reject { |a| (a % 13).zero? }
end

arr = unlucky_13([104, 351, 455, 806, 871])
puts arr
# 182 and 637 are divisible by 13.
