=begin
in:integer
out: integer
rules:
  if the integer in is a double return as is
  otherwise return the integer times 2
  
  double
    even number of digits
    left digits == right digits
    44, 3333, 103103

check if integer has even number of digits
check if first half equals second half
  return same number
or
return number times 2
=end

def twice(int)
  len = int.digits.length
  if len.even?
    left = int.digits[0..(len/2 - 1)]
    right = int.digits[-len/2..-1]
    return int if left == right
  end
  int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

=begin
#digits
=end