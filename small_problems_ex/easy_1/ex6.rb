# Reverse it (part 2)

def reverse_words(sentence)
  reversed = []
  sentence.split.each do |word|
    if word.length >= 5
      reversed << word.chars.reverse.join
    else
      reversed << word
    end
  end

  return reversed.join(" ")
end

puts reverse_words("Launch School")
puts reverse_words("Hello World")
puts reverse_words("Walk around the block")