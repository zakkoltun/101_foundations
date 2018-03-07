def prompt(msg)
  puts ">> #{msg}"
end


prompt("Please enter an integer greater than 0:")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

if operation == "s"
  sum = (1..number).reduce(:+)
  puts "The sum of numbers from 1 to #{number} is #{sum}" 
else
  product = (1..number).reduce(:*)
  puts "The product of numbers from 1 to #{number} is #{product}"
end