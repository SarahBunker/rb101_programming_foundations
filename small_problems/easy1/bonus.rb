def calculate_bonus(salary, bonus_q)
  bonus_q ? salary*0.5 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

=begin
my Solution
def calculate_bonus(salary, bonus_q)
  bonus = 0
  bonus += salary/2.0 if bonus_q
  bonus
end

should have used a ternary operator
=end