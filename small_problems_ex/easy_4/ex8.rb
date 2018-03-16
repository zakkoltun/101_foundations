DIGITS = { '0' => 0, '1' => 1, '2' => 2,
           '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8,
           '9' => 9
         }

def string_to_integer(num)
  place_multiplier = 1
  int_value = 0

  num.chars.reverse_each do |digit|
    int_value += DIGITS[digit] * place_multiplier
    place_multiplier *= 10
  end
  int_value
end

def string_to_signed_integer(num)
  case num[0]
  when '-' then string_to_integer(num[1..-1]) * -1
  when '+' then string_to_integer(num[1..-1])
  else          string_to_integer(num)
  end
end

puts string_to_signed_integer '12345'
puts string_to_signed_integer '-1000023'
