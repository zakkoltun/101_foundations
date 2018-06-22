require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, punc = ", ", conj = "or")
  arr[-1] = "#{conj} #{arr[-1]}" if arr.size > 1
  joined = arr.size > 2 ? arr.join(punc) : arr.join(" ")
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_square(brd, marker)
  at_risk_square = nil
  other_marker = (marker == PLAYER_MARKER) ? COMPUTER_MARKER : PLAYER_MARKER  # set other_marker to opposite of marker

  WINNING_LINES.each do |winning_line|
    line_values = brd.values_at(*winning_line)
    if line_values.count(other_marker) == 2 && line_values.count(marker) == 0
      at_risk_square = winning_line[line_values.index(INITIAL_MARKER)]
    end
  end
  at_risk_square
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose an empty square (#{joinor empty_squares(brd)}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include? square
    prompt "Sorry, please choose a valid square"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  case 
  when find_at_risk_square(brd, PLAYER_MARKER) then square = find_at_risk_square(brd, PLAYER_MARKER)
  when find_at_risk_square(brd, COMPUTER_MARKER) then square = find_at_risk_square(brd, COMPUTER_MARKER)
  when empty_squares(brd).include?(5) then square = 5
  else square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  case current_player
  when PLAYER_MARKER then player_places_piece!(brd)
  when COMPUTER_MARKER then computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  current_player == PLAYER_MARKER ? COMPUTER_MARKER : PLAYER_MARKER
end

player_wins = 0
computer_wins = 0

# main loop
loop do
  board = initialize_board
  display_board board
  prompt "Player wins: #{player_wins}, Computer wins: #{computer_wins}"

  current_player = PLAYER_MARKER
  loop do
    display_board board
    place_piece!(board, current_player)
    display_board board
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    winner = detect_winner(board)
    prompt "#{winner} won!"

    winner == 'Player' ? player_wins += 1 : computer_wins += 1 
    if player_wins == 5
      prompt "Player has won 5 games. Congratulations!"
      break
    elsif computer_wins == 5
      prompt "Computer has won 5 games. Better luck next time!"
      break
    end
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

prompt 'Thanks for playing!'
