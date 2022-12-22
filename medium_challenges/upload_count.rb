# frozen_string_literal: true

require 'byebug'

# You are given an array of dates in the format Dec 11 and a month in the format Dec as arguments.
# Each date represents a video that was uploaded on that day.
# Return the number of uploads for a given month.
def upload_count(dates, month)
  arr = dates.map { |t| t.split(' ').slice(0) }
  arr.select { |t| t == month }.count
end

upload_count(['Sept 22', 'Sept 21', 'Oct 15'], 'Oct')
