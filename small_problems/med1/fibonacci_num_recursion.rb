=begin
P
find the nth fibinacci number
f(1) = 1
f(2) = 1
f(3) = f(n-2) + f(n-1) = f(2) + f(1) = 2
f(4) = f(3) + f(2) = 3
E
provided
D

A

C
=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n-2) + fibonacci(n-1)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

=begin
the ending condition is f(1) and f(2) = 1
recursive, call itself twice

Further exploration
problems that impact its usability
it doesn't handle numbers less then 1 or args that aren't integers
=end