=begin
input: 2 positive integers
output: prints result of + - * / ^
rules
-ignore data validation
-prompt function
-displays math as string as well as result

Algorythm

prompt function
get two inputs
store inputs
calculate each operation
display results

integer division
=end

def prompt(message)
  puts "=> #{message}"
end

prompt "Enter the first number:"
num1 = gets.chomp.to_i

prompt("Enter the second number:")
num2 = gets.chomp.to_i

prompt("#{num1} +  #{num2} = #{num1 + num2}")
prompt("#{num1} -  #{num2} = #{num1 - num2}")
prompt("#{num1} *  #{num2} = #{num1 * num2}")
prompt("#{num1} /  #{num2} = #{num1 / num2}")
prompt("#{num1} %  #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")

=begin
Futher exploration
second number zero?
floats instead of integers?
  rounding
=end