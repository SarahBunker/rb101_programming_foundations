=begin
#------------------------------------------------------------------------------
PROBLEM:
using a hash collect number of characters that are uppercase, lowercase, or neither
then change number to percentage
input: string
output: hash
mutating? no
rules:
    Explicit requirements:
      
    Implicit requirements:
      the integer representing the percentage is a float with one digit and 
      50.3% = 50.3 != 0.503
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- create an array for uppercase, and lowercase
- count total number of characters
- create hash
    lowercase is counting number of lowercase letters / total
    uppercase is counting number of uppercase letteres / total
-   neither is 100 minus lowercase-uppercase
- 
- 
- 

=end
def letter_percentages(string)
  total = string.size
  uppercase_s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  lowercase_s = uppercase_s.downcase
  percentage_h = {}
  percentage_h[:lowercase] = (string.count(lowercase_s)/total.to_f * 100) .round (1)
  percentage_h[:uppercase] = (string.count(uppercase_s)/total.to_f * 100) .round (1)
  percentage_h[:neither] = 100 - percentage_h[:lowercase] - percentage_h[:uppercase]
  
  percentage_h
end


p letter_percentages('abCdef 123')  == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef')    == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123')         == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')   == { lowercase: 66.7, uppercase: 33.3, neither: 0.0 }