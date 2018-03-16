def add_ending(number)
  tens = number % 100
  ones = number % 10

  ending = ''
  if [11, 12, 13].include? tens
    ending = 'th'
  elsif ones == 1
    ending = 'st'
  elsif ones == 2
    ending = 'nd'
  elsif ones == 3
    ending = 'rd'
  else
    ending = 'th'
  end
  ending
end

def century(year)
  first_year = year % 1000 == 0
  hundreds = year / 100

  century_num = first_year ? hundreds : hundreds + 1
  "#{century_num}#{add_ending year}"
end

puts century 2001
puts century 2000
puts century 2011
