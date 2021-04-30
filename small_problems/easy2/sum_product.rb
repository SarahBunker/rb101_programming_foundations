=begin
get integer
get sum or product

calculate sum or product

print results
=end

def prompt(message)
  puts "=> #{message}"
end

prompt "Please enter an integer greater then 0:"
num = gets.chomp.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product"
operation = gets.chomp


if operation == 's'
  total = 0
  num.times do |index|
    total += (index + 1) #index starts at 0?
  end
  puts "The sum of the integers between 1 and #{num} is #{total}"
else
  total = 1
  num.times do |index|
    total *= (index + 1)
  end
  puts "The product of the integers between 1 and #{num} is #{total}"
end
=begin
case operation
when 's' then Array(1..num).reduce(:+)
when 'p' then Array(1..num).reduce(:*)
end
=end

#FIX ME
#create array of numbers

=begin
didn't do further exploration
could...
finish figuring out my first atempt solution with the reduce
add data validation
=end

