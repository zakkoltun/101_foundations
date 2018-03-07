puts "Enter the length of the room in meters:"
length_meters = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_meters = gets.chomp.to_f

area_meters = length_meters * width_meters
area_feet = area_meters * 10.7639

puts "The area of the room is #{area_meters} (#{format("%02.2f", area_feet)} feet)"