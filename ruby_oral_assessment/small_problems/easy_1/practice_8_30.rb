# Implement a method that calculates the sum of the integers inside a string. E.g. "L12aun3ch Sch3oo45l"



=begin
#------------------------------------------------------------------------------
PROBLEM:
define a method that calculates sum of integers in string

input: string
output: integer
rules:
    Explicit requirements:
      calculate sum of integers within string
    Implicit requirements:
      only alpha characters, integers, or spaces
      multiple digit numbers are allowed (20 is 20 not 2 and 0)
Unclear parts of problem?
empty string? assuming still will return zero
#------------------------------------------------------------------------------
EXAMPLES
p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("HELLO WORLD77!") == 77
p sum_of_integers("") == 0
#------------------------------------------------------------------------------
DATA STRUCTURE
string
var to store integer
array to store integers or sum integers as iterating

#------------------------------------------------------------------------------
ALGORITHM
1. def method
  initialize total to zero
  create array of all integers as string (num as string array)
  A. split string into chars
  B. iterate through chars
    if char is part of num as string array
      add to total
  return total
  
  OR
  create array of all integers as string (num as string array)
  
  split string into chars
  select all characters that are part of num as string array
  convert to integers and return sum
  
def method
    create array of alpa characters
    
  convert string to array of characters
  iterate through array of characters
    if character is part of alpha characters replace with " "
  join array of characters
  
    
=end

def sum_of_integers(string)
  num_as_str = (0..9).to_a.map(&:to_s)
  integer_array = string.chars.select {|char| num_as_str.include?(char)}.map(&:to_i)
  integer_array.reduce(:+)
end

p sum_of_integers("a1")
# EXAMPLES
p sum_of_integers("HE2LL3O W1OR5LD")                                          #== 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") #== 3635
p sum_of_integers("HELLO WORLD!")                                             #== 0
p sum_of_integers("HELLO WORLD77!")                                           #== 77