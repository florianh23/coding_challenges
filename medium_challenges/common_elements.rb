# frozen_string_literal: true

# Create a function that takes two lists of numbers sorted in ascending
# order and returns an array of numbers which are common to both the
# input arrays.

def common_elements(arr1, arr2)
    p arr1.select { |elem| arr2.include?(elem) }
end

# common_elements([-1, 3, 4, 6, 7, 9], [1, 3])

common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10])

# common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5])

# common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15])
