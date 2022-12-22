# frozen_string_literal: true

require 'byebug'
# Create a function that takes an array (slot machine outcome) and
# returns true if all elements in the array are identical, and false otherwise.
# The array will contain 4 elements.

def test_jackpot(result)
  return 'enter valid array' if result.length != 4

  match = result.uniq.map { |t| [t, result.count(t)] }
  match.length == 1
end

# test_jackpot(["@", "@", "@", "@"])

test_jackpot(%w[abc abc abc abc])

# test_jackpot(["SS", "SS", "SS", "SS"]) ➞ true

# test_jackpot(["&&", "&", "&&&", "&&&&"])

# test_jackpot(["SS", "SS", "SS", "Ss"]) ➞ false
