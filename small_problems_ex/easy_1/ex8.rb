def average(arr)
  sum = 0
  arr.each { |num| sum += num }
  # or sum = arr.reduce(:+)
  return sum.to_f / arr.size
end



puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])