def calculate_bonus(num, bonus_status)
  bonus_status ? num / 2 : 0
end



puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000