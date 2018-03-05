def sum(n)
  digits = n.to_s.chars.map! { |d| d.to_i }
  digits.reduce(:+)
  # in ruby 2.4.0, this could just be n.digits.reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45