def prompt(msg)
  puts "==> #{msg}"
end

def last_in_first_five?(first_five, last)
  first_five.include? last
end

prompt("Enter the 1st number:")
one = gets.chomp.to_i

prompt("Enter the 2nd number:")
two = gets.chomp.to_i

prompt("Enter the 3rd number:")
three = gets.chomp.to_i

prompt("Enter the 4th number:")
four = gets.chomp.to_i

prompt("Enter the 5th number:")
five = gets.chomp.to_i

prompt("Enter the last number:")
last = gets.chomp.to_i

first_five = [one, two, three, four, five]

if last_in_first_five?(first_five, last)
  puts "The number #{last} appears in #{first_five}."
else  
  puts "The number #{last} doesn't appear in #{first_five}."
end
