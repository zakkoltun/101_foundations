DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3',
           4 => '4', 5 => '5', 6 => '6', 7 => '7',
           8 => '8', 9 => '9'
         }

def get_digit_place(num, place)
  (num % (place*10)) / place 
end

def integer_to_string(int)
  digits = []

  while int >= 0
    digits << DIGITS[int % 10]
    int = int / 10
    break if int == 0
  end
  
  digits.join.reverse
end

def signed_integer_to_string(int)
  case 
  when int < 0 then "-" + integer_to_string(-int)
  when int > 0 then "+" + integer_to_string(int)
  else integer_to_string(int)
  end
end

puts signed_integer_to_string 4321
puts signed_integer_to_string 0
puts signed_integer_to_string -5000