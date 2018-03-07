puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

age_diff = retire_age - current_age
current_year = Time.now.year

puts "It's #{current_year}. You will retire in #{current_year + age_diff}"
puts "You only have #{age_diff} more years to work!"