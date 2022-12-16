require 'byebug'
def odd_product(arr)
    odd = arr.select {|n| n.odd?}
    odd1 = odd.reduce(1) {|prod, num| prod * num }
end

odd_product([3, 4, 1, 1, 5]) 

odd_product([5, 5, 8, 2, 4, 32]) 

odd_product([1, 2, 1, 2, 1, 2, 1, 2])
