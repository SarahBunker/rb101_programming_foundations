=begin
in: array of numbers
out: integer representing sum
rules: array contains at least one number
  method([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)

plot:
  first number * length of array
  second number * 1-length of array
  ..
  last number
  
  iterate through each number
    add the correct number to the total
    keep adding until added all numbers
    
  return sum

=end

#def sum_of_sums(numbers)
#  counter = numbers.length
#  sum = 0
#  index = 0
#  loop do
#    break if counter <= 0
#    sum += numbers[index] * counter
#    counter -= 1
#    index += 1
#  end
#  sum
#end

# def sum_of_sums(numbers)
#   counter = numbers.length
#   sum = 0
#   numbers.each do |num|
#     sum += num * counter
#     counter -= 1
#   end
#   sum
# end

#def sum_of_sums(numbers)
#  sum = 0
#  numbers.each_with_index do |num, index|
#    counter = numbers.length-index
#    sum += num * counter
#  end
#  sum
#end

def sum_of_sums(numbers)
  amount = numbers.length
  temp_array = []
  numbers.each do |num|
    amount.times {temp_array << num}
    amount -= 1
  end
  # at this point if numbers = [3,5,2]
  # temp array = [3,3,3,5,5,2]
  temp_array.reduce(:+)
end



p sum_of_sums([3, 5, 2])       == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3])    == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])             == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
add to anki
  .reduce with enumberable example
    missed () vs {} or []

=end