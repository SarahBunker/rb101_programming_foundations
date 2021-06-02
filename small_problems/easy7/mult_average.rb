=begin
in: array of integers
out: float
rules:
  result is rounded to three decimal places
  assume array is non-empty

plot:
1) mulitply each term in array
2) divide result by length of array
3) print result rounded to third decimal place

=end

def show_multiplicative_average(array)
  multiply_result = array.reduce(:*) #{|sum,num| sum *= num}
  result = (multiply_result.to_f/array.length).round(3)
  p sprintf("%.3f", result)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667