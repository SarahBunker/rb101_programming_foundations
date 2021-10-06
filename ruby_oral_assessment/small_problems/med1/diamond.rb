=begin
#------------------------------------------------------------------------------
PROBLEM:
display a 4 pointed diamond where n is an odd integer supplied as an argment
input: integer
output: display the diamond
rules:
    Explicit requirements:
      assume argument is always odd
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

diamond(1)

*

diamond(3)

 *
***
 *
 
 
 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:
diamond(5)

- def method
- initialize counter as 1
loop
- print counter times '*' centered in integer spaces
- increase counter by 2
- break when counter > integer
- undo last incrementation

loop
- reduce counter by 2
- print counter times '*' centered in integer spaces
- break if counter >= 1

=end


def diamond(n)
  counter = -1
  loop do
    counter += 2
    puts ('*' * counter).center(n," ")
    break if counter >= n
  end
  loop do
    break if counter <= 1
    counter -= 2
    puts ('*' * counter).center(n," ")
    
  end
end

diamond(1)
diamond(3)
diamond(9)