def options
  puts "what would you like to do?"
  puts "Type one of the following:"
  enter_bar
  good_inputs = ["add","subtract","multiply","divide","help","q"]
  good_inputs.each{|x| puts x}
  enter_bar
end

def gave_good_input(input)
  arr = ["add","subtract","multiply","divide","help","q"]
  arr.include?(input)
end

def get_int_input
  puts "what number would you like to use?"
  gets.chomp.to_i
end

def enter_bar
  puts ""
end

def help_txt
  puts "The followin options are available:"
  puts "----------------------------------"
  puts "add: a + b"
  puts "subtract: a - b"
  puts "multiply: a * b"
  puts "divide: a / b  NOTE can't divide by zero"
  puts "help: list options and descriptions"
  puts "q: quit calculator"
  enter_bar
end

#_____________________
user_input  = nil
num1        = nil
num2        = nil
loop do
  loop do #get operation
    options()
    user_input = gets.chomp.downcase
    enter_bar
    break if gave_good_input(user_input)
    puts "I am sorry I don't know what you meant."
    enter_bar
  end
  
  case user_input
    when "help"
      help_txt
      next
    when "q"        then break_loop = true
    else
  end
  
  break if break_loop
  
  puts "For the first number,"
  num1 = get_int_input
  enter_bar
  loop do
    puts "For the second number,"
    num2 = get_int_input
    enter_bar
    break if user_input != "divide"
    break if num2 != 0
    puts "Error: can't divide by zero, please choose another number."
    enter_bar
  end
  
  case user_input
    when "add"      then puts "#{num1} + #{num2} = #{num1 + num2}."
    when "subtract" then puts "#{num1} - #{num2} = #{num1 - num2}."
    when "multiply" then puts "#{num1} * #{num2} = #{num1 * num2}."
    else                 puts "#{num1} / #{num2} = #{num1 / num2}."
  end
  enter_bar
end

=begin
could change to allow float
could change array to constant
=end