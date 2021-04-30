=begin
def sum(num)
  num.digits.reduce do |sum, digit|
    sum += digit
  end
end
=end

def sum(number)
  number.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
