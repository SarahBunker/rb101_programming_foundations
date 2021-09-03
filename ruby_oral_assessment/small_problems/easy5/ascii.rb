=begin
#------------------------------------------------------------------------------
PROBLEM:
Find ASCII string value, sum of ascii values of every character in the string
use String#ord to determine the ASCII value
input: string
output: integer
rules:
    Explicit requirements:
      
    Implicit requirements:
      empty string returns zero
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.



=end

def ascii_value(string)
  #return 0 if string.size == 0
  string.chars.map {|char| char.ord}.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
