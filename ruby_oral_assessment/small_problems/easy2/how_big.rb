=begin
#------------------------------------------------------------------------------
PROBLEM:
ask for length of room in m
ask for width of room
display answer in m2 and ft2

input: length and width, float
output: area, floating point
rules:
    Explicit requirements:
      1 square meter == 10.7639 square feet
      Do not worry about validating the input at this time.
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.define constant hash
2.get length
3.get width
4.find area in m2
5.convert to ft2
6.display results



=end

conversion = {:m2_ft2 => 10.7639}
p "Enter the length of the room in meters:"
len = gets.chomp.to_f
p "Enter the width of the room in meters:"
wid = gets.chomp.to_f

area_m2 = len*wid.round(2)
area_ft2 = (area_m2*conversion[:m2_ft2]).round(2)
p "The area of the room is #{area_m2} square meters #{area_ft2} square feet)."