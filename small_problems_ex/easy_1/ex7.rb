def stringy(num)
  stringed = []
  num.times do |i|
    stringed << (i+1) % 2
  end
  stringed.join
end

puts stringy(6)
puts stringy(3)