puts "Please write a word or multiple words:"
words = gets.chomp

puts "There are #{words.gsub(' ', '').size} characters in \"#{words}\""