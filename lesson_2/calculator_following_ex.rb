=begin
all objects have inspect method
  used to show that string had newline until .chomp was called on it
  
puts and gets live in kernal method

if loops do not create a block and so variables do not need to be initialized outside of them in order to access outside of the loop

they did not convert to integers imediatly so that you could do float division
=end

puts "Welcome to Calculator"

puts "What is the first number?"
number1 = gets.chomp

puts "What is the second number?"
number2 = gets.chomp

puts "What operation would you like to perform? 1)add 2)subtract 3)multiply 4)divide"
operation = gets.chomp

if operator == "1"
  results = number1.to_i + number2.to_i
elsif operator == "2"
  results = number1.to_i - number2.to_i
elsif operator == "3"
  results = number1.to_i * number2.to_i
else
  results = number1.to_f / number2.to_f
  