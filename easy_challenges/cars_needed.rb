# frozen_string_literal: true

require 'byebug'

def cars_needed(num)
  if num.zero?
    0
  else
    (num.to_f / 5).ceil
  end
end
# alternative:
# def cars_needed(num)
#     (num / 5.0).ceil
# end

cars_needed(16)
