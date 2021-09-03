=begin
#------------------------------------------------------------------------------
PROBLEM:
display a right triangle with n stars on each side where n is given as an arguement. The right angle of the triangle is in the bottom right hand side.

input: integer, length of side
output: printed star
rules:
    Explicit requirements:
      location and direction of star
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- create string with one star

loop
- print string right hand justified
- increase the number of stars
- break loop when number of stars > input arguement
- 
- 
- 

=end

# def triangle(n)
#   stars = "*"
#   loop do
#     break if stars.size > n
#     puts stars.rjust(n," ")
#     stars << "*"
#   end
# end

def triangle(n)
  stars = "*"*n
  loop do
    break if stars.size == 0
    puts stars.rjust(n," ")
    stars.chop!
  end
end



triangle(3)
triangle(5)
#triangle(9)
