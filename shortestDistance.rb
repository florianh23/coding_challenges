# frozen_string_literal: true

def shortest_distance(txt)
  arr = txt.split(',').map(&:to_f)
  p x_1 = arr[0]
  p x_2 = arr[2]
  p y_1 = arr[1]
  p y_2 = arr[3]

  distance = Math.sqrt((x_2 - x_1)**2 + (y_2 - y_1)**2).round(2)
end

shortest_distance('-5,2,3,1')
