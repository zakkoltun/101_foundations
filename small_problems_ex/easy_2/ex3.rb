puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = (bill * (tip_percent / 100)).round(2)
total_bill = (bill + tip).round(2)

puts "The tip is #{tip}"
puts "The bill is #{total_bill}"