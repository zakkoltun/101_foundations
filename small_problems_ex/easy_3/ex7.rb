def oddities(array)
  odd_array = []
  array.length.times do |i|
    if i.even?
      odd_array << array[i]
    end
  end
  odd_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([123])
p oddities([123, 456])