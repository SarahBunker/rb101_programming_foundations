=begin
#------------------------------------------------------------------------------
PROBLEM:

input: year
output: number of friday the 13
mutating? NA
rules:
    Explicit requirements:
      assume year greater then 1752
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- initalize counter = 0
- loop through months and check if the 13th is a friday
-    increment counter if friday 13th
- return counter
- 
- 
- 
- 

=end

require "date"

def friday_13th(year)
  counter = 0
  1.upto(12) do |month|
    counter += 1 if Date.new(year,month,13).friday?
  end
  counter
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
