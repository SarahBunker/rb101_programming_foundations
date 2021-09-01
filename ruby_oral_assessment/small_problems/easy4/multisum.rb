=begin
#------------------------------------------------------------------------------
PROBLEM:
Find sum of multiples of 3 and 5 between 1 and given number
input: integer
output: integer, sum of multiples
rules:
    Explicit requirements:
      number passed is greater then 1, integer
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

define method
1. initialize empty array
2. loop
3. calculate multiples of 3 and add to add until multiple is greater then or equal to end number
4. loop
5. calculate multiples of 5
6. add to array unless also a multiple of 3
7. end when multiple is greater then end number
8. total sum of array
9. return total
10.



=end

def multisum(ending_int)
  new_array = []
  mult = 3
  while mult <= ending_int
    new_array << mult
    mult += 3
    #p mult
  end
  mult = 5
  while mult <= ending_int
    new_array << mult unless mult % 3 == 0
    mult += 5
  end
  new_array.reduce(:+)
end

p multisum(15)

p multisum(3)    == 3
p multisum(5)    == 8
p multisum(10)   == 33
p multisum(1000) == 234168