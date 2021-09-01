=begin
#------------------------------------------------------------------------------
PROBLEM:
Determine what century it is based on the year and then output it as a string
input: int representing the year
output: string rep the century name
rules:
    Explicit requirements:
      years from 01 - 100 in the hundred digits place belong to the same century
    Implicit requirements:
      numbers in the name rep how many hundreds their are
Unclear parts of problem?
#------------------------------------------------------------------------------
EX
1901 is part of the 20th century


#------------------------------------------------------------------------------
DATA STRUCTURE
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

0 th
1 st
2 nd
3 rd
4 th
5 th
6 th
7 th
8 th
9 th

#------------------------------------------------------------------------------
ALGORITHM
example:

def method
1. Determine the number of hundreds
2. take last digit and compare to group of endings
3. convert to string and add correct ending
4. return string
5.
6.
7.
8.
9.
10.



=end



def century(year)
  ending = { 0 => "th", 1=> "st", 2=> "nd", 3 => "rd", 4 => "th", 5 => "th", 6 => "th", 7 => "th", 8 => "th", 9 => "th"}
  hundreds = year/100
  if year.to_s[-2..-1] == "00"
    hundreds -= 1
  end
  hundreds += 1
  suffix = ending[hundreds.to_s[-1].to_i]
  last_2_digits = hundreds.to_s[-2..-1]
  if (11..13).to_a.include?(last_2_digits.to_i)
    suffix = "th"
  end
  #suffix
  "#{hundreds}#{suffix}"
end

p century(2000)     == '20th'
p century(2001)     == '21st'
p century(1965)     == '20th'
p century(256)      == '3rd'
p century(5)        == '1st'
p century(10103)    == '102nd'
p century(1052)     == '11th'
p century(1127)     == '12th'
p century(11201)    == '113th'