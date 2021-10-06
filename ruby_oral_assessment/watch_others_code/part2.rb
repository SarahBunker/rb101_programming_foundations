=begin
#------------------------------------------------------------------------------
PROBLEM:
find the next biggest number after a number that has the same digits
input: integer
output: integer (bigger then first but same digits)
mutating? NA
rules:
    Explicit requirements:
      has to have the same digits
      has to be the next biggest number
      numbers are positive
      returns -1 if there is not a number that meets the requirements
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
p next_bigger_num(12) ==> 21
p next_bigger_num (513) ==> 531
p next_bigger_num(2017) ==> 2071
#If no bigger number can be composed using those digits, return -1:
p next_bigger_num(9) ==> -1
p next_bigger_num(111) ==> -1
p next_bigger_num(531) ==> -1


#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

get together collections of possible arrangments of the digits
select if greater then given number
if selected values is empty return -1
otherwise return minimum of selected values

=end

def digit_arrangment(integer)
  permutation = integer.digits.permutation.to_a
  permutation = permutation.map do |dig_arr|
    dig_arr.join.to_i
  end
  permutation.sort
end

def next_bigger_num(integer)
  permutations = digit_arrangment(integer)
  next_integer = permutations.select{|num| num>integer}[0]
  return -1 if next_integer == nil
  next_integer
end

p next_bigger_num (513) #  == 531
p digit_arrangment(21)
p next_bigger_num(123)

p next_bigger_num(12)   == 21
# p next_bigger_num (513) == 531
p next_bigger_num(2017) == 2071
#If no bigger number can be composed using those digits, return -1:
p next_bigger_num(9)    == -1
p next_bigger_num(111)  == -1
p next_bigger_num(531)  == -1