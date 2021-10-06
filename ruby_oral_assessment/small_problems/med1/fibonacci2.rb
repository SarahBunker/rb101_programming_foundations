=begin
#------------------------------------------------------------------------------
PROBLEM:
write a recursive fibonacci method to comput the nth fibonacci number



input: integer nth, 
output:integer, the nth fibonacci number
mutating? NA
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
1,1,2,3,5..
1 2 3 4 5
the 5th fibonacci number is 5

f(5) = f(4) + f(3)
      = f(3) + f(2)   + f(2) + f(1)
      = f(2) + f(1) + f(2)   + f(2) + f(1)

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- last = 1
- second to last = 1
- counter = 2
- current = nil

if nth is less then or equal to 2 return last

- loop up to nth
- current = last + second to last
- last = current
- second to last = last
  counter += 1
  break if counter >= nth
  
  return current

=end

# def fibonacci(nth)
#   #second_2_last : last : current : next
#   last = 1
#   second_2_last = 1
#   current = nil
#   counter = 2
  
#   return last if nth <= 2
  
#   loop do
#     current = last + second_2_last
#     #p "current is: #{current} = #{last} + #{second_2_last}"
#     second_2_last = last
#     last = current
    
#     counter += 1
#     break if counter >= nth
#   end
    
#   current
# end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(3)
# p fibonacci(4)
# p fibonacci(5)
p fibonacci(20) #== 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501