def is_an_ip_number?(number)
  (0..256).cover? number.to_i
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  valid_ip = true
  if dot_separated_words.size != 4
    return false
  else
    dot_separated_words.each do |word|
      valid_ip = false if !is_an_ip_number?(word)
    end
  end
  valid_ip
end

puts "10.10.10.10: #{dot_separated_ip_address? '10.10.10.10'}"
puts "10.10.10: #{dot_separated_ip_address? '10.10.10'}"