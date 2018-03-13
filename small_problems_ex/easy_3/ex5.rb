def multiply(first, second)
  first * second
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64