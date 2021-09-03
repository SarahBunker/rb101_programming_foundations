=begin
#------------------------------------------------------------------------------
PROBLEM:
Find the index of the first fibonacci number that has the number of digits given as argument
input: number of digits, integer >= 2
output: index, integer
rules:
    Explicit requirements:
      the first number has index 1
      first two num are 1 and 1, each subsequent number is the sum of the two previous numbers
    Implicit requirements:

I don't want to calculate the fibonacci sequence each iteration because that is time consuming. I want to keep a running tab on the second to last number and the last number.
Also I need to calculate the size of the number

Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- initilize 2nd to last number as 1
- initialize last number as 1
- initialize index as 2
- loop
-   add the 2nd to last number and the last number
-   replace 2nd to last with last
-   replace last with result
-   increment index
-   calculate number of digits.
-     convert to string or array and calculate size
-   break if size == argument
- return index

=end

def find_fibonacci_index_by_length(num_digits)
  second_last = 1
  last = 1
  index = 2
  loop do
    result = second_last + last
    second_last = last
    last = result
    index += 1
    digits = result.to_s.size
    break if digits == num_digits
  end
  index
end


p find_fibonacci_index_by_length(2)     == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)     == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)    == 45
p find_fibonacci_index_by_length(100)   == 476
#p find_fibonacci_index_by_length(1000)  == 4782
#p find_fibonacci_index_by_length(10000) == 47847