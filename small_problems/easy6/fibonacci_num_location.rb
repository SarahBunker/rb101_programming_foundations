=begin
in: integer, number of digits
out: integer, index of first number in fibinanchi sequence that has that number of digits
rules:
  arguement will always be greater then or equal to 2
  
algorythm

function fibonacci
from previous code

compare the number of digits of the current number in the sequence to the argument number of digits
break when equal to

=end

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(4)

=begin
def find_fibonacci_index_by_length(digits_input)
  index = 1
  loop do 
    break if fibonacci(index).digits.length == digits_input
    index += 1
  end
  index
end
=end

def find_fibonacci_index_by_length(digits_input)
  num1 = 1
  num2 = 1
  index = 3
  loop do
    num3 = num1 + num2
    break if num3.digits.length >= digits_input
    index += 1
    num1= num2
    num2 = num3
  end
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

p "done"

=begin
the last one timed out, maybe compare to solutions when reworking
=end