puts "What is your name?"
answer = gets.chomp

scream = answer[-1] == "!"

if scream
  name = answer.chomp("!") # or answer.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{answer}."
end