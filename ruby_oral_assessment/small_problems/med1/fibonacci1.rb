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
- total = method(n-1) + method(n-2)
- 
- 
- 
- 
- 
- 

=end

def fibonacci(n)
  if n == 1 || n == 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
