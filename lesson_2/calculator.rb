def prompt(message)
  Kernel.puts "=> #{message}"
end

def valid_number?(number_string)
  number_string.to_i != 0
end


def operation_to_msg(op)
  ops = {'1' => 'Adding', '2' => 'Subtracting', '3' => 'Multiplying', '4' => 'Dividing'}
  return ops[op]
end

prompt "Welcome to Calculator!"

name = ''
loop do
  prompt "What's your name?"
  name = Kernel.gets.chomp
  if name.empty?
    prompt 'Make sure to use a valid name.'
  else
    break
  end
end

prompt("Hi #{name}!")

loop do   # main loop

  number1 = ""
  number2 = ""

  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hm... that doesn't look like a valid number")
    end
  end

  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end


  result = case operator
           when '1'
            number1.to_i + number2.to_i
           when '2'
            number1.to_i - number2.to_i
           when '3'
            number1.to_i * number2.to_i
           when '4' 
            number1.to_f / number2.to_f
  end

  prompt("#{operation_to_msg(operator)} the two numbers...")

  prompt("The result is #{result}")

  prompt("Do you want to perform another operation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

prompt("Thanks for using the calculator!")