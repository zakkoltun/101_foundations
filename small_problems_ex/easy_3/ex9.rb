def real_palindrome?(words)
  words = words.downcase.gsub(/[^0-9a-z]/, '') # could also use delete
  puts words
  words == words.reverse
end

puts real_palindrome? "madam"
puts real_palindrome? "Madam"
puts real_palindrome? "madam i'm adam"
puts real_palindrome? "356653"
puts real_palindrome?('123ab321')