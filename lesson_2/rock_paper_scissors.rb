VALID_CHOICES = ['rock', 'paper', 'scissors']
def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
     (player == 'paper' && computer == 'scissors') ||
     (player == 'scissors' && computer == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do # main loop
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; computer chose #{computer_choice}")

  display_results(choice, computer_choice)  

  prompt("Do you want to play again? Y to play again")
  answer = gets.chomp.downcase
  break unless answer == 'y'
end