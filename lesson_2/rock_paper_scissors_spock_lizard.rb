VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_CHOICES_LETTER = %w(r p sc sp l)

score_array = [0, 0]
def prompt(message)
  puts("=> #{message}")
end

def win?(player1, player2)
  (player1 == "rock" && (player2 == "lizard" || player2 == "scissors")) ||
    (player1 == "paper" && (player2 == "rock" || player2 == "spock")) ||
    (player1 == "scissors" && (player2 == "lizard" || player2 == "paper")) ||
    (player1 == "spock" && (player2 == "rock" || player2 == "scissors")) ||
    (player1 == "lizard" && (player2 == "paper" || player2 == "spock"))
end

def display_results(choice, computer_choice)
  if win?(choice, computer_choice)
    prompt("You win!")
  elsif win?(computer_choice, choice)
    prompt("The computer won.")
  else
    prompt("It's a tie.")
  end
end

def update_results(choice, computer_choice, score)
  if win?(choice, computer_choice)
    score[0] += 1
  elsif win?(computer_choice, choice)
    score[1] += 1
  end
end

choice = ''
loop do # match loop
  prompt("Win 5 games to win the match")
  loop do # game loop
    loop do
      prompt("choose one: #{VALID_CHOICES.join(', ')}")
      prompt("or choose from the shortened options:
        #{VALID_CHOICES_LETTER.join(', ')}")
      choice = gets.chomp
      if VALID_CHOICES_LETTER.include?(choice)
        case choice
        when 'r' then choice = "rock"
        when 'p' then choice = "paper"
        when 'sc' then choice = "scissors"
        when 'sp' then choice = "spock"
        when 'l'  then choice = "lizard"
        end
      end
      break if VALID_CHOICES.include?(choice)
      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)
    update_results(choice, computer_choice, score_array)

    prompt("The score is player: #{score_array[0]} computer: #{score_array[1]}")

    if score_array[0] == 5
      prompt("You made it to 5 wins and won this match!")
    elsif score_array[1] == 5
      prompt("The computer made it to 5 wins and won this match.")
    end
    break if (score_array[0] == 5) || (score_array[1] == 5)

    prompt("Do you want to play another game?")
    answer = gets.chomp
    break unless answer.downcase.start_with?("y")
  end
  prompt("Do you want to start another match?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
