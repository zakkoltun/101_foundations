# Print all even numbers from 1 to 99, inclusive. 

# 100.times { |n| puts n if n.even? && n.positive? }

# or

curr_num = 2
while curr_num < 100
  puts curr_num
  curr_num += 2
end
