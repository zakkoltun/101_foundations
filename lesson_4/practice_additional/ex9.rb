def titleize(words)
  words.split.map { |word| word.capitalize }.join(" ") 
end

puts titleize "the flintstones rock"