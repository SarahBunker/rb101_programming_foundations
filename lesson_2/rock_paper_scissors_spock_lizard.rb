VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_CHOICES_LETTER = %W(r p s l)

def prompt(message)
  puts ("=> #{message}")
end

def win?(player1, player2)
  (player1 == "rock" && ( player2 == "lizard" || player2 == "scissors") ) ||
    (player1 == "paper" && ( player2 == "rock" || player2 == "spock") ) ||
    (player1 == "scissors" && ( player2 == "lizard" || player2 == "paper") ) ||
    (player1 == "spock" && ( player2 == "rock" || player2 == "scissors") ) ||
    (player1 == "lizard" && ( player2 == "paper" || player2 == "spock") )
end

def display_results(choice,computer_choice)
  if win?(choice,computer_choice)
    prompt("You win!")
  elsif win?(computer_choice,choice)
    prompt("The computer won.")
  else
    prompt("It's a tie.")
  end
end

choice = ''
loop do
  loop do
    prompt("choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    break if VALID_CHOICES.include?(choice)
    if choice == "s"
      #start here, fix me
    end
    prompt("That's not a valid choice.")
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  display_results(choice,computer_choice)
  
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

