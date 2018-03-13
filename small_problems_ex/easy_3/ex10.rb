def palindromic_number?(number)
  number.to_s.reverse.to_i == number 
end

puts palindromic_number? 123456
puts palindromic_number? 12321
puts palindromic_number? 555555