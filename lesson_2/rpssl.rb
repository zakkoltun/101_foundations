VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def win?(first, second)
  winning_choices = { 'rock' => %w(scissors lizard), 'paper' => %w(rock spock),
                      'scissors' => %w(paper lizard), 'spock' => %w(rock scissors),
                      'lizard' => %w(paper spock) }
  winning_choices[first].include? second
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def winner?(player, computer)
  if win?(player, computer)
    return 1
  elsif win?(computer, player)
    return -1
  else
    return 0
  end
end

def interpret_choice(choice)
  case choice
  when "r" || "rock"
    "rock"
  when "p" || "paper"
    "paper"
  when "sc" || "scissors"
    "scissors"
  when "sp" || "spock"
    "spock"
  when "l" || "lizard"
    "lizard"
  else
    choice
  end
end

player_score = 0
computer_score = 0

loop do # main loop
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")

    input_choice = Kernel.gets().chomp()
    choice = interpret_choice(input_choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; computer chose #{computer_choice}")

  display_results(choice, computer_choice)
  winner = winner?(choice, computer_choice)

  if winner > 0
    player_score += 1
  elsif winner < 0
    computer_score += 1
  end

  prompt "Your score: #{player_score}; Computer score: #{computer_score}"
  
  if player_score == 5
    prompt "You are the grand winner! Match is over."
    break
  elsif computer_score == 5
    prompt "Computer is the grand winner! Match is over"
    break
  end

  prompt("Do you want to play again? Y to play again")
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
