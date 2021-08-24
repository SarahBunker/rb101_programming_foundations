=begin
#------------------------------------------------------------------------------
PROBLEM:
Create a function that takes an integer and returns the factorial of that integer. That is, the integer multiplied by all positive lower integers.


input: integer
output: factorial of input (integer)
rules:
    Explicit requirements:
      factorial is the multiple of all positive lower integers
    Implicit requirements:
      factorial of 1 is zero
      input will be an integer
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
Test cases:
factorial(0) == 1
factorial(1) == 1
factorial(3) == 6
factorial(5) == 120
factorial(13) == 6227020800

#------------------------------------------------------------------------------
DATA STRUCTURE
input and output are integers
intermediary variable needed to store running total

#------------------------------------------------------------------------------
ALGORITHM

define factorial method   accepts one arguement (integer)
  intialize variable for total as 1
  
  if input arguement is less then 0
    return error statment
  
  if input arguement equals 0
    return (total)
  
  else
    intialize (variable for counter) as 1
    loop
      break loop if (variable for counter) equals (input arguement)
      multiply (variable for counter) by (total) and assign to (total)
      add one to (variable for counter)
    end
    return (total)
  end
end 

=end

def secondLargest(arr)
  arr.sort{|a,b| b<=>a}[1]
end

p secondLargest([10, 40, 30, 20, 50])   == 40
p secondLargest([25, 143, 89, 13, 105]) == 105
p secondLargest([54, 23, 11, 17, 10])   == 23


