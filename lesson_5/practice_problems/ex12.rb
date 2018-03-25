arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}

arr.each do |pair|
  key = pair[0]
  val = pair[1]
  hsh[key] = val
end

p hsh