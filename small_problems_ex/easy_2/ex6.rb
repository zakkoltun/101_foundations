# Print all odd numbers from 1 to 99, inclusive. 

# 100.times { |n| puts n if n.odd? }

# or

curr_num = 1
while curr_num < 100
  puts curr_num
  curr_num += 2
end
