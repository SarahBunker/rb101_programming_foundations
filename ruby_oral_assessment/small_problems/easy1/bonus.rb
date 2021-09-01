=begin
#------------------------------------------------------------------------------
PROBLEM:
calculate bonus using salary and whether or not they get the bonus

input: integer and boolean, salary and bonus
output: integer, bonus
rules:
    Explicit requirements:
      true means they get the bonus
      false means the bonus is zero
      if they get the bonus it is half the salary
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.def method
2.if bool return 1/2 * salary
3.else return zero



=end

def calculate_bonus (salary, bool)
  bool ? salary*0.5 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000