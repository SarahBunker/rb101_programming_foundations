=begin
welcome

set choice array

ask user for choice
get choice

create random choice for computer
  sample
display computer choice

calculate winner
if statments /case statments
  three possible arrays
  [tie, win, lose] => string
  index of computer choice in choice_a matches string in winner array
display winner

=end

choice_a      = ['rock','paper','scissors']
user_rock     = ['tie' ,'lose' ,'win'     ]  #if the user picks rock they ___ against the computer
user_paper    = ['win' ,'tie'  ,'lose'    ]
user_scissors = ['lose','win'  ,'tie'     ]
user_choice     = nil
computer_choice = nil
they___against_computer = nil

puts "Welcome to Sarah's arcade for rock paper scissors!"
puts ""
puts "Please choose"
choice_a.each {|x| puts x}
loop do
  puts ""
  user_choice = gets.chomp.downcase
  break if choice_a.include? (user_choice)
  puts "I am sorry, please try again."
end
puts ""

computer_choice = choice_a.sample
puts "The computer choose #{computer_choice}."


=begin
calculate winner
if statments /case statments
  three possible arrays
  [tie, win, lose] => string
  index of computer choice in choice_a matches string in winner array
display winner
=end

index_computer_choice = choice_a.index(computer_choice)
#puts index_computer_choice

case user_choice
when choice_a[0] then they___against_computer = user_rock[index_computer_choice]
when choice_a[1] then they___against_computer = user_paper[index_computer_choice]
when choice_a[2] then they___against_computer = user_scissors[index_computer_choice]
end

puts ""
puts "In today's match against the computer you #{they___against_computer}."
  