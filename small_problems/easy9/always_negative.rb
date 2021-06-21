=begin
in: integer
out: integer
rules: returns the negative of positive numbers
  returns negative numbers and 0 as is

plot:
check if number is greater then 0
replace number with number * -1

or 

return number
=end

def negative(int)
  #solution suggested using a ternary operator
  int > 0? -int : int
  
  ###my solution
  #return -int if int > 0
  #int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

#abs ~ returns absolute value of integer
=begin

second solution
def negative(int)
  #convert all to positive and then apply negative.
  -int.abs
end

Further Exploration
Is it better?
=end