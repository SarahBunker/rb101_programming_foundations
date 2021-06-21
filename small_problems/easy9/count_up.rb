=begin
in: int
out: array of all integers in sequence between 1 and the arg
rules: assume integer is always valid greater then 0

plot:
create a range of values from 1 to integer
convert range to array
return array

=end
def sequence(int)
  (1..int).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

=begin
Further Exploration
if integers less then 0 were allowed how should the method do?
  you could have it count from the negative number to the positive of that number
  or you could have it count from negative to 1
  or you could have it count from -1 to that number
=end

def sequence2(int)
  case
  when int == 0
    []
  when int > 0
    (1..int).to_a
  else
    (int..-1).to_a.reverse
  end
end

p ""
p sequence(5) == [1, 2, 3, 4, 5]
p sequence2(-4) == [-1,-2,-3,-4]
p sequence2(0) == []
p sequence2(-1) == [-1]

=begin
Array#reverse
range: seems like I have to write it from biggest to smallest and then reverse the values if
I want it in the opposite order.

=end