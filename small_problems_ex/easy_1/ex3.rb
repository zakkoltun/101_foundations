def digit_list(num)
  str = num.to_s
  digits = []
  str.chars.each do |char|
    digits << char.to_i
  end
  return digits
end

p digit_list(1234)
p digit_list(2)