# frozen_string_literal: true

require 'byebug'

def get_triangle_type(arr)
  return 'not a triangle' if arr.length != 3

  p dub = arr.uniq.map { |t| [t, arr.count(t)] }
  case dub.length
  when 1
    p 'equilateral'
  when 2
    p 'isosceles'
  when 3
    p 'scalene'
  end
end
get_triangle_type([2, 6, 5])
