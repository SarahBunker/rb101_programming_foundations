require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(string)
  puts "=> #{string}"
end

=begin

def valid_number?(input)
  # their code
  # input.to_i.to_s == input
  if input == "0"
    true
  else
    input.to_i != 0
  end
end

=end

def number?(input)
  #edge case, doesn't deal with 1. or 1.30 it either adds a zero or takes one off
  input.to_i.to_s == input || input.to_f.to_s == input
end

def operation_to_message(op)
  result = case op
            when '1' then "Adding"
            when '2' then "Subtracting"
            when '3' then "Multiplying"
            when '4' then "Dividing"
            end
  return result
end

number1 = nil

number2 = nil

name = ''

operation = nil

prompt(MESSAGES['welcome'])

loop do
  name = gets.chomp
  break if !name.empty?
  prompt(MESSAGES['valid_name'])
end

prompt("Hi #{name}!")

loop do # main loop
  loop do
    prompt(MESSAGES['num_prompt_1'])
    number1 = gets.chomp
    break if number?(number1)
    prompt(MESSAGES['num_error'])
  end

  loop do
    prompt(MESSAGES['num_prompt_2'])
    number2 = gets.chomp
    break if number?(number2)
    prompt(MESSAGES['num_error'])
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1)add
    2)subtract
    3)multiply
    4)divide
  MSG

  prompt(operator_prompt)

  loop do
    operation = gets.chomp
    break if %w(1 2 3 4).include?(operation)
    prompt(MESSAGES['op_prompt'])
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result =  case operation
            when '1' then number1.to_i + number2.to_i
            when '2' then number1.to_i - number2.to_i
            when '3' then number1.to_i * number2.to_i
            when '4' then number1.to_i / number2.to_i
            end

  prompt("The result is #{result}.")

  prompt(MESSAGES['repeat_prompt'])
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
  
end
prompt(MESSAGES['bye'])

=begin
all objects have inspect method
  used to show that string had newline until .chomp was called on it

puts and gets live in kernal method

if loops do not create a block and so variables do not need to be
initialized outside of them in order to access outside of the loop

they did not convert to integers imediatly so that you could do float division
=end

=begin
I was using add instead of 1
=end

=begin
here docs in Ruby allow for multiple line comments
the MSG or msg in my code can be anything as long as the
  start and end are the same
they are delimiters


Things to think about
could make number validation loop check if it is '0'
  before checking if .to_i == 0

make operation_to_method with other code?
add a variable to store case
result =  case op
          when '1' then "Adding"
          when '2' then "Subtracting"
          when '3' then "Multiplying"
          when '4' then "Dividing"
          end

kernal methods are called without a reciever
kernel automatically loaded by object giving us access to all of its modules
=> kernel methods availble everywhere

=end
