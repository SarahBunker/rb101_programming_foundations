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

def get_num
  puts "What is the first number you would like to use?"
  num = gets.chomp
  return num
end

num1 = 4
num2 = 5

#user_input = "add"
#user_input = "subtract"
#user_input = "multiply"
user_input = "divide"
#check that user input is one of the words
#includes to check it is in an array of values
#print list of acceptable values if they type help


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
=end