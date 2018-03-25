arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

=begin
def hash_values_all_even?(hsh)
  all_even = true
  hsh.values.each do |arr|
    arr.each do |num|
      all_even = false if num.odd?
    end
  end
  all_even
end

hsh = arr.select do |hsh|
  hash_values_all_even? hsh
end

p hsh
=end

hsh = arr.select do |hsh|
  hsh.all? do |_, arr|
    arr.all? do |num|
      num.even?
    end
  end
end

p hsh