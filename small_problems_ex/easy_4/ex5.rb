def multiples_of_3_and_5(number)
  factors = []
  (1..number).each do |num|
    if num % 3 == 0 || num % 5 == 0
      factors << num
    end
  end
  factors
end

def multisum(number)
  multiples = multiples_of_3_and_5 number
  multiples.reduce(:+)
end

puts multisum 3
puts multisum 5
puts multisum 10
puts multisum 1000