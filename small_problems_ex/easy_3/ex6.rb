def xor?(one, two)
  (one || two) && !(one && two)
end

puts xor?(true, false)
puts xor?(false, false)
puts xor?(true, true)