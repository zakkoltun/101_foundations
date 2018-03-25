arr = ['10', '11', '9', '7', '8']

reverse = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p reverse