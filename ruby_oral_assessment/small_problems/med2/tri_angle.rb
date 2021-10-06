=begin
#------------------------------------------------------------------------------
PROBLEM:
classifying a triangle into one of 4 catagories based on three angles

input: 3 angles, integers, unit:degrees
output: symbol representing triangle classification
mutating?
rules:
    Explicit requirements:
      Triangle:
      - angles sum to 180deg
      - all angles > 0
      
      Right: one angle = 90 deg
      acute: all angles < 90 deg
      obtuse: one angle > 90 deg
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE
triangle(60, 70, 50)    == :acute
triangle(30, 90, 60)    == :right
triangle(120, 50, 10)   == :obtuse
triangle(0, 90, 90)     == :invalid
triangle(50, 50, 50)    == :invalid

#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- store angles in sorted array
- invalid if smallest angle <= 0, or if the sum of angles doesn't equal 180
- obtuse if largest > 90
- right if largest = 90
- acute
- 
- 

=end

def triangle(a,b,c)
  angles = [a,b,c].sort
  return :invalid if angles[0] <= 0 || angles.sum != 180
  return :obtuse if angles[-1] >  90
  return :right if angles[-1]  == 90
  :acute
end


p triangle(60, 70, 50)    == :acute
p triangle(30, 90, 60)    == :right
p triangle(120, 50, 10)   == :obtuse
p triangle(0, 90, 90)     == :invalid
p triangle(50, 50, 50)    == :invalid
