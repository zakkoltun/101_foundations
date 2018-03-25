arr1 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr2 = arr1.map do |hash|
  inc_hash = {}
  hash.each do |k, v|
    inc_hash[k] = v + 1
  end
  inc_hash
end

p arr2