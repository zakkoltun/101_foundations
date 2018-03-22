statement = "The Flintstones Rock"
letters = statement.gsub(/[^0-9a-z]/i, '').chars

character_hash = {}

letters.each do |char|
  character_hash[char] = statement.count char
end

p character_hash