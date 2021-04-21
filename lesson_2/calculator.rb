=begin
Build a command line calculator program that does the following:

asks for two numbers
asks for the type of operation to perform: add, subtract, multiply or divide
displays the result
Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output.
Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().
=end

=begin
function to get number
  check that it is a number
  loop if invalid
  
function to check if number is 0 when dividing
  call function to get number in loop until not equal to 0

loop
  get first number
  get second number
  ask for type of operation
  case
  add
  subtract
  multiply
  else divide
  end
end

print results
=end

=begin
def get_num
  puts "What is the first number you would like to use?"
  num = gets.chomp
  return num
end
=end
puts "What is the first number you would like to use?"
num1 = gets.chomp.to_i
puts "What is the 2nd number you would like to use?"
num2 = gets.chomp.to_i


good_inputs = ["add","subtract","multiply","divide","help","q"]

def put_good_inputs(input)
  arr = ["add","subtract","multiply","divide","help","q"]
  arr.include?(input)
end

puts "what would you like to calculate? Type one of the following:"
good_inputs.each{|x| puts x}


user_input = gets.chomp.downcase

if user_input == "divide" && num2 == 0
  puts "ERROR. Can't devide by zero."
  puts "Please start again"
end
#check that user input is one of the words
#includes to check it is in an array of values
#print list of acceptable values if they type help

if user_input == "help"
  puts "add: a + b"
  puts "subtract: a - b"
  puts "multiply: a * b"
  puts "divide: a / b  NOTE can't divide by zero"
  puts "help: list options and descriptions"
  puts "q: quit calculator"
end


if user_input    == "add"
  puts num1 + num2
elsif user_input == "subtract"
  puts num1 - num2
elsif user_input == "multiply"
  puts num1 * num2
else                #divide
  puts num1 / num2
end

=begin
frills
asking if user wants to perform another action
adding non integer functions
adding checking if input is an integer

change if statments to case

=end