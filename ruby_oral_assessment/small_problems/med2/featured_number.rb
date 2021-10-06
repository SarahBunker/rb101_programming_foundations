=begin
#------------------------------------------------------------------------------
PROBLEM:
determine featured number (featrued number: odd, divisible by seven, and no repeated digits)
input: integer
output: integer ()
mutating?
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:
define feature()
- find nearest seven multiple less than given number
loop until number is greater than 9876543210
add seven to number
skip if even
skip if repeted digits
return number

print error
- 
- 
- 
- 
- 
- 

=end
def featured(input)
  number = input/7
  number *= 7
  while number <= 9876543210
    number += 7
    next if number.even?
    next if number.digits!=number.digits.uniq
    return number
  end 
  "error:no featured number past this number"
  
  
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


