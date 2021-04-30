def stringy(num, start_with = 1)
  i = start_with
  string = ""
  loop do
    string << i.to_s
    i == 0 ? i = 1 : i = 0
    num -= 1
    break if num == 0
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts ""
puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4, 0)
puts stringy(7, 0)

=begin
refactoring
ternary operator

Solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

they used .times which comes with an index element
times {|i| block } => self

should have known that

I think starting with a string and adding them as strings makes
more sense then adding to an array and then combing into a string


=end
