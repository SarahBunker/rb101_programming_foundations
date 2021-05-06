=begin
input:6 numbers
output:message saying if first 5 numbers includes 6
rules:
- no data validation
- use prompt message
-------------------------
get input 6 times
store first 5 in array
check if 6th is in array

=end

ordinal_array = %w(1st 2nd 3rd 4th 5th)
number_array = []

def prompt(message)
  puts ("=> #{message}")
end

counter = 0
limit = ordinal_array.length

loop do
  prompt ("Enter the #{ordinal_array[counter]} number:")
  answer = gets.chomp.to_i
  number_array << answer
  counter += 1
  break if counter >= limit
end

prompt ("Enter the last number:")
number6 = gets.chomp.to_i

if number_array.include?(number6)
  puts "The number #{number6} does appear in #{number_array}."
else
  puts "The number #{number6} does not appear in #{number_array}."
end