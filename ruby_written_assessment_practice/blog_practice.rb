deck = ("2".."10").to_a
deck.prepend("A")
deck.append("J","Q","K")

points = {"A" => 11, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10, "J" => 10, "Q" => 10, "K" => 10}

puts "Iteration"
i = 0
loop do
  puts deck[i]
  i += 1
  break if i == deck.size
end

deck.each{|card| puts card}

puts "Transformtion"
a_deck = []
i = 0
loop do
  a_deck << deck[i].to_i
  i += 1
  break if i == deck.size
end

new_deck = deck.map{|card| card.to_i}

p a_deck
p new_deck

double_points = points.map{|string,num| num * 2}

p double_points

double_points_h = points.map{|string,num| [string,num * 2]}.to_h

p double_points_h

puts "Selection"

another_deck = []
i = 0
loop do
  if deck[i].to_i > 0
    another_deck << deck[i]
  end
  i += 1
  break if i == deck.size
end

this_deck = deck.select{|card| card.to_i > 0}

p another_deck
p this_deck

big_cards = points.select{|name,points| points > 7}

p big_cards

word = "Selection"
word_sorted = word.chars.sort { |a,b| b <=> a }

p word_sorted.join

puts

p word.chars.sort_by

phone_numbers = {"Jamie" => "(946) 852-2137", "Adam" =>
  "(874) 492-2356", "Ben" => "(931) 535-2634", "Enoch" => 
  "(654) 370-1009", "Liz" => "(725) 686-6347", "Penny" =>
  "(973) 374-7565", "Emily" => "(591) 338-6173", "James" =>
  "(233) 751-6343"}

phone_book = phone_numbers.sort_by!{|name, number| name}.to_h
p phone_book