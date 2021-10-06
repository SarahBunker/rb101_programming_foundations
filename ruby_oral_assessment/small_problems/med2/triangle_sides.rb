=begin
#------------------------------------------------------------------------------
PROBLEM:
determine if the three given lengths for an equalateral, isosceles, scalene, or not a triangle
input: three numbers(can be float) representing triangle side lengths
output: symbol indicating triangle type
mutating?
rules:
    Explicit requirements:
      valid triangles: sum of the two shortest sides > length of longest side
      all side lengths > 0
      
      equilateral: all sides same length
      isosceles: two sides same length, one side different
      scalene: all sides are different lengths
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method

- determining if the sides can make a triangle
-   if they can't return :invalid

they form a triangle
- determine how many unique lengths there are
- 3 return scalene
- 2 return iso
- 1 return equ
- 

=end

def triangle(a,b,c)
  side_array = [a,b,c].sort
  return :invalid if side_array.include?(0) || side_array[0] + side_array[1] <= side_array[2]
  case side_array.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end

end


p triangle(3, 3, 3)   == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5)   == :scalene
p triangle(0, 3, 3)   == :invalid
p triangle(3, 1, 1)   == :invalid

#start here
p triangle(2, 2, 3)   == :isosceles

p triangle(3,4,5) == :scalene
