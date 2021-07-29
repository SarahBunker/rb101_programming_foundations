=begin

Loop 1
  1) display initial board (3x3)
  Loop 2
    2) Ask the user to mark a square
    3) computer marks a square
    4) display the updated board state
    5) if winner display winner
    6) if board is full, display tie
    7) if neither winner nor board is full go to #2
  8) play again?
  9) if yes go to #1
10) good bye

is player x's or o's
=end

require "pry"
# require "pry-byebug"

INTITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnals

def prompt(txt)
  puts ">> #{txt}"
end

def joiner(arr, separator = ", ", coordinator = "or")
  last_num = arr.pop
  new_string = arr.join(separator)
  if new_string.size == 0
    return last_num.to_s
  elsif new_string.size == 1
    return "#{new_string} #{coordinator} #{last_num}"
  else
    return "#{new_string}#{separator} #{coordinator} #{last_num}"
  end
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  hz_line_dash = "-----+-----+-----"
  hz_line_blank = "     |     |     "

  #system "clear"
  puts "You're mark is #{PLAYER_MARKER}. Computer mark is #{COMPUTER_MARKER}"
  puts ""
  puts hz_line_blank
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts hz_line_blank
  puts hz_line_dash
  puts hz_line_blank
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts hz_line_blank
  puts hz_line_dash
  puts hz_line_blank
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts hz_line_blank
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board(filler=INTITIAL_MARKER)
  new_board = {}
  (1..9).each { |num| new_board[num] = filler }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INTITIAL_MARKER } # array of empty keys
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "please choose a square: #{joiner(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if return_offense_play(brd) != nil
    square = return_offense_play(brd)
  elsif return_defensive_play(brd) != nil
    square = return_defensive_play(brd)
  elsif brd[5] == " "
    square = 5
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def return_offense_play(brd)
  WINNING_LINES.each do |line|
    count_comp_marker = brd.values_at(*line).count(COMPUTER_MARKER)
    count_blank = brd.values_at(*line).count(INTITIAL_MARKER)
    if count_comp_marker == 2 && count_blank == 1
      line.each {|sqr| return sqr if brd[sqr] == " "}
    end
  end
  nil
end

def return_defensive_play(brd)
  WINNING_LINES.each do |line|
    count_player_marker = brd.values_at(*line).count(PLAYER_MARKER)
    count_blank = brd.values_at(*line).count(INTITIAL_MARKER)
    if count_player_marker == 2 && count_blank == 1
      line.each {|sqr| return sqr if brd[sqr] == " "}
    end
  end
  nil
end

def place_piece!(brd,person)
  if person == "Player"
    player_places_piece!(board)
  elsif person == "Computer"
    computer_places_piece!(board)
  else
    prompt "Error, unknown player"
  end
end

def alternate_player(player)
  if player == "Player"
    player = "Computer"
  elsif player == "Computer"
    player = "Player"
  else
    prompt "Unknown person playing"
  end
end

def place_piece!(brd,player)
    player_places_piece!(brd) if player == "Player"
    computer_places_piece!(brd) if player == "Computer"
end

score = {"Player" => 0, "Computer" => 0}
current_player = nil

loop do
  prompt "Who do you want to go first? (Player/Computer)"
  answer = gets.chomp.downcase
  if answer.start_with?("p")
    current_player = "Player"
    prompt "You will go first."
  elsif answer.start_with?("c")
    current_player = "Computer"
    prompt "The computer will go first"
  else
    prompt "That is not a valid choice. Please type Player or Computer."
  end
  break if current_player != nil
end

loop do
  board = initialize_board

  loop do
    display_board(board)

    place_piece!(board,current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == "Player"
      score["Player"] += 1
    else
      score["Computer"] += 1
    end
  else
    prompt "It's a tie!"
  end

  puts ""
  prompt "The score is Player: #{score["Player"]} Computer: #{score["Computer"]}"
  if score["Player"] >= 5
    prompt "Player won the match!!"
    score = {"Player" => 0, "Computer" => 0}
  elsif score["Computer"] >= 5
    prompt "Computer won the match!!"
    score = {"Player" => 0, "Computer" => 0}
  end
  prompt "Do you want to keep playing? (y/n)"
  answer = gets.chomp.downcase
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing Tic-Tac-Toe")

=begin
NOTES
system "clear"
!!detect_winner(brd)
  bang bang forces an output into a boolean
    detect winner will return a string if there is a winner and nil otherwise
    the string will be forced into true by bang bang
    or false if nil is returned
By checking after both players go it is possible for the computer to win
even though they went second.
  refactor to check who one after both the player and the computer goes.
brd.values_at(*line)
  the splat operator turns an array into individual arguements
  values_at >> returns values from hash for keys as an array
  
  
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return "Player"
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return "Computer"
    # end

Current player won't be accesible inside the method
how to mutate?

=end
