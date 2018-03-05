def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num_string)
  num_string.to_i.to_s == num_string || num_string.to_f.to_s == num_string
end

loop do # main loop
  p = '' # loan amount
  loop do
    prompt("What is the loan amount (p)?")
    p = gets.chomp
    if valid_number? p
      break
    else
      prompt("Hm... that ain't valid")
    end
  end  

  apr = ''
  loop do
    prompt("What is the APR? (format as %)")
    apr = gets.chomp
    if valid_number? apr
      break
    else
      prompt("Hm... that ain't valid")
    end
  end

  n = '' # loan duration
  loop do
    prompt("What is the loan duration in months (n)?")
    n = gets.chomp
    if valid_number? n
      break
    else
      prompt("Hm... that ain't valid")
    end
  end

  j = (apr.to_f / 100) / 12  # apr -> monthly interest rate

  m = p.to_f * (j / (1 - (1 + j)**(-n.to_f)))

  prompt("Monthly payment is $#{format('%02.2f', m)}")

  prompt("Do you want to perform another calculation? Y to continue")
  answer = gets.chomp
  break unless answer.downcase == 'y'

end
