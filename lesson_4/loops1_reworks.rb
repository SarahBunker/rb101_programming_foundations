iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

#------------------------
say_hello = true
iterations = 1
while say_hello
  puts 'Hello!'
  iterations += 1
  say_hello = false if iterations > 5
end

#------------------------
numbers = []

while numbers.length < 5
  num = rand(100)
  puts num
  numbers << num
end

#----------------------
count = 1

until count > 10
  puts count
  count += 1
end

#---------------------
puts "print until"
numbers = [7, 9, 13, 25, 18]

until numbers.length == 0
  puts numbers.shift
end

#------------------------
puts "thats odd"
for i in 1..10
  puts i if i.odd?
end

#-----------------------
puts "greet your friends"
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for i in friends
  puts "Hello, #{i}!"
end