def string_to_integer(num)
  char_to_int = { '0' => 0, '1' => 1, '2' => 2,
                      '3' => 3, '4' => 4, '5' => 5,
                      '6' => 6, '7' => 7, '8' => 8,
                      '9' => 9
                    } # should have moved this to constant
  place_multiplier = 1
  int_value = 0

  num.chars.reverse_each do |digit|
    int_value += char_to_int[digit] * place_multiplier
    place_multiplier *= 10
  end
  int_value
end

puts string_to_integer '12345'
puts (string_to_integer '12345').class