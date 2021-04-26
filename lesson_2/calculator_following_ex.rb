=begin
all objects have inspect method
  used to show that string had newline until .chomp was called on it
  
puts and gets live in kernal method

if loops do not create a block and so variables do not need to be initialized outside of them in order to access outside of the loop

they did not convert to integers imediatly so that you could do float division
=end

def prompt(string)
  puts "=> #{string}"
end

def valid_number?(number)
  number.to_i != 0
end

def operation_to_message(op)
  case op
  when '1' then "Adding"
  when '2' then "Subtracting"
  when '3' then "Multiplying"
  when '4' then "Dividing"
  end
end

number1 = nil
number2 = nil
name =''
operation = nil

prompt( "Welcome to Calculator! Enter your name:")

loop do
  name = gets.chomp
  break if !name.empty?
  prompt("Make sure to use a valid name.")
end

prompt("Hi #{name}!")

loop do #main loop
  loop do
    prompt( "What is the first number?")
    number1 = gets.chomp
    break if valid_number?(number1)
    prompt("Error. Please enter an integer.")
  end
  
  loop do
    prompt("What is the second number?")
    number2 = gets.chomp
    break if valid_number?(number2)
    prompt("Error. Please enter an integer.")
  end
  
  operator_prompt = <<-msg
    What operation would you like to perform?
    1)add
    2)subtract
    3)multiply
    4)divide
  msg
  
  prompt (operator_prompt)

  loop do
    operation = gets.chomp
    break if %w(1 2 3 4).include?(operation)
    prompt ("Choose 1, 2, 3, or 4")
  end

  prompt ("#{operation_to_message(operation)} the two numbers...")
  
  result =  case operation
            when '1' then number1.to_i + number2.to_i
            when '2' then number1.to_i - number2.to_i
            when '3' then number1.to_i * number2.to_i
            when '4' then number1.to_i / number2.to_i
            end
  
  prompt( "The result is #{result}." )
  
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
  prompt("Thanks for coming.")
end

=begin
I was using add instead of 1
=end

=begin
here docs in Ruby allow for multiple line comments
the MSG or msg in my code can be anything as long as the start and end are the same
they are delimiters
=end