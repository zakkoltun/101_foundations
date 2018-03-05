# Reverse it (part 1)

def reverse_sentence(sentence)
  sentence_array = sentence.split
  reversed_array = []
  while sentence_array.any?
    reversed_array << sentence_array.pop
  end
  return reversed_array.join(" ")
end

puts reverse_sentence("Hello there")
puts reverse_sentence("1 2 3")

# Notes: could also just use the array.reverse method