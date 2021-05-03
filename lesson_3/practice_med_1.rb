ascii = "The Flintstones Rock!"

10.times{
  puts ascii
  ascii.prepend(" ")
}

=begin
Solution 
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
=end

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"

def factors(number)
  divisor = number
  factors = []
  begin
    break if number <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(16)

=begin
Solution
while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end
They mean to use something besides the begin, end until loop
I thought they meant to leave the original code and modify it without
add begin until end
=end

#Q4
# yes, << is more appropriate because then you can have access to the buffer outside since it is modified

#Q5
# the limit number was initialized outside of the method, but not passed in as an arguement
# fix by passing limit as an arguement

#Q6
# 42 - 8 = 34

#Q7
# yes, becuase []= is mutating

=begin
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
puts rps("paper", "rock")

Q8
"paper"

Q9
"no"
=end
