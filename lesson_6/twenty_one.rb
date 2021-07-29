=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.

deck: 52 cards, hash
key, card name
value, card value
  aces default to 11 unless player would bust then switch to 1
"#{num.to_s} of #{suit}"

have more then one player
have personalities
count cards
have 4 decks: put stop 60-70 cards from bottom
include betting
splits, double down,

=end

NUM_DECKS = 4
SUITS = ["Spades", "Clubs", "Hearts", "Diamonds"]
SPACER_LINE = "----------"

def prompt(string)
  puts ">>> #{string}"
end

def deck_initial
  deck_cards = []
  NUM_DECKS.times do
    2.upto(10) do |num|
      SUITS.each { |suit| deck_cards << ["#{num} of #{suit}", num] }
    end
    SUITS.each do |suit|
      deck_cards << ["Ace of #{suit}", 11]
      deck_cards << ["Jack of #{suit}", 10]
      deck_cards << ["Queen of #{suit}", 10]
      deck_cards << ["King of #{suit}", 10]
    end
  end
  deck_cards.shuffle!
end

def deal_card_to_player(deck, whos_hand)
  whos_hand.append(deck.pop)
end

def return_value_hand(hand)
  result = 0
  hand.each do |_name, value|
    result += value
  end
  result
end

def ace_stored_eleven?(hand)
  hand.any? do |card|
    name, value = card
    name.start_with?("Ace") && value == 11
  end
  # test me
end

def ace_to_one!(hand)
  changed_one = false
  hand.each do |card|
    name, value = card
    if name.start_with?("Ace") && value == 11
      (card[-1] = 1)
      changed_one = true
    end
    break if changed_one
  end
  nil
  # test me
end

def bust?(hand)
  loop do
    break if return_value_hand(hand) <= 21 || !ace_stored_eleven?(hand)
    ace_to_one!(hand)
  end
  return_value_hand(hand) > 21
  # test me
end

def display_hand(hand)
  hand.each { |card| p card[0] }
end

def display_dealer_hand(hand)
  prompt "The dealer has:"
  p "face down card"
  hand.each_with_index do |card, i|
    next if i == 0
    p card[0]
  end
end

def player_turn(dck, player_h)
  loop do
    prompt "Do you want to hit(get another card) or stand(stop getting cards)?"
    answer = gets.chomp.downcase
    if answer == "hit" || answer.start_with?("h")
      deal_card_to_player(dck, player_h)
      prompt "You have the following cards"
      display_hand(player_h)
    elsif !(answer == "stand" || answer.start_with?("s"))
      prompt "I am sorry, please type hit or stand"
    end
    break if bust?(player_h) || answer == "stand"
  end
end

def dealers_turn(dck, hand)
  loop_end = false
  display_dealer_hand(hand)
  prompt "The face down card is"
  puts hand[0][0]
  loop do
    if return_value_hand(hand) < 17
      prompt "The dealer hits."
      deal_card_to_player(dck, hand)
      prompt "The dealer now has:"
      display_hand(hand)
    else
      prompt "The dealer stands"
      loop_end = true
    end
    break if loop_end || bust?(hand)
  end
end

def dealer_turn_results(c_hand, p_hand)
  if return_value_hand(c_hand) > 21
    prompt "They bust and you won. Payday, the dealer pays you."
  elsif return_value_hand(p_hand) > return_value_hand(c_hand)
    prompt "You won! The dealer pays you."
  elsif return_value_hand(p_hand) < return_value_hand(c_hand)
    prompt "The dealer won. Make sure to settle your debt."
  else
    prompt "Well, you tied the dealer. Nobody won."
  end
end

prompt "Welcome to BlackJack"
puts SPACER_LINE
deck = deck_initial

loop do
  # initialize deck and hands
  deck = deck_initial if deck.size < 60
  player1_hand = []
  computer_hand = []

  # deal cards
  2.times do
    deal_card_to_player(deck, player1_hand)
    deal_card_to_player(deck, computer_hand)
  end

  display_dealer_hand(computer_hand)
  puts SPACER_LINE

  prompt "You have"
  display_hand(player1_hand)

  player_turn(deck, player1_hand)

  prompt "You scored: #{return_value_hand(player1_hand)}"
  puts SPACER_LINE
  if return_value_hand(player1_hand) > 21
    prompt "You bust and lost to the dealer. Pay up!"
  else
    dealers_turn(deck, computer_hand)
    prompt "They scored #{return_value_hand(computer_hand)}"
    puts SPACER_LINE
    dealer_turn_results(computer_hand, player1_hand)
    puts SPACER_LINE
  end

  prompt "Do you want to play again? y/n"
  answer = gets.chomp.downcase
  break if answer.start_with?("n")
  puts SPACER_LINE
end
