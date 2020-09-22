INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVE = 'choose'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

require "pry"

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_score
  new_score = {}
  new_score[:player] = 0
  new_score[:computer] = 0
  new_score
end

def who_goes_first(choice)
  case choice
  when 'computer'
    return 'computer'
  when 'player'
    return 'player'
  when 'choose'
    prompt "Who goes first (enter 'player' or 'computer')"
    return gets.chomp
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter =', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square && empty_squares(brd).include?(5)
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def keep_score(winner, score)
  case winner
  when 'Player'
    score[:player] += 1
  when 'Computer'
    score[:computer] += 1
  end
end

def display_score(score)
  prompt "Current Score-> Player: #{score[:player]}, Computer: #{score[:computer]}"
end

def display_match_winner(score)
  if score[:player] >= 5
    prompt "Player is match winner!!!"
  else
    prompt "Computer is match winner!!!"
  end
end

loop do
  score = initialize_score
  first_piece = who_goes_first(FIRST_MOVE)

  loop do
    board = initialize_board

    loop do
      case first_piece
      when 'player'
        display_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

      when 'computer'
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        display_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

      end
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      keep_score(detect_winner(board), score)
    else
      prompt "It's a tie!"
    end

    display_score(score)

    break if score.values.include?(5)

    prompt "Press enter to play next round..."
    gets

  end

  display_match_winner(score)
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! XOXO...Good Bye!"
