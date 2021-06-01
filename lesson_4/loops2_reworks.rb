puts "even or odd"
count = 1

loop do
  puts "#{count} is odd" if count.odd?
  puts "#{count} is even" if count.even?
  break if count >= 5
  count += 1
end

#-----------------------------------------
puts "catch the number"
loop do
  number = rand(100)
  puts number
  break if number <= 10
end

#----------------------------------------
puts "Conditional Loop"
process_the_loop = [true, false].sample
if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed"
end

#---------------------------------------
puts "get the sum"
answer = 4
loop do
  puts 'What does 2 + 2 equal?'
  #answer = gets.chomp.to_i
  break if answer == 4
  puts "Wrong answer. Try again!"
end

#--------------------------------------
puts "enter the number"
#numbers[]
numbers = [1,2,3,4,5]

loop do
  break if numbers.length == 5 
  puts 'Enter any number:'
  inputs = gets.chomp.to_i
  numbers << inputs
end
puts "the array is:"
puts numbers

#--------------------------------------
puts "empty array"
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0
end

#-----------------------------------------
puts "Stop counting"
5.times do |index|
  puts index
  break if index == 2
end

5.times do |index|
  puts index
  break if index == 4
end

5.times do |index|
  puts index
  break if index < 7
end

#------------------------------------------
puts "only even"
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

#--------------------
puts "first to five"
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

#--------------------------
puts "greeting"
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end 