def digit_list(num)
  num.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=begin
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

creates an empty array
divides by 10 and stores remainder in front part of array and the number of times is used to repeat the process again

def digit_last(number)
  number.to_s.chars.map(&:to_i)
end

convert to string
split into an array of numberic characters
change array to numbers from string
  Enumerable map
  &:to_i short hand for 
  
  something.map { |char| char.to_i}

=end