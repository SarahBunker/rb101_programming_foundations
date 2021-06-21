=begin
in: two integers[count,first num of seq]
out: array with length count, first value is second integer, successive values are multiples of int
rules:
  count arguement will be >= 0
  if count == 0 the array should return empty
  starting number can be any integer value

plot:
initialize empty array
loop count times
add starting num * count to end of array

return array

=end

=begin
def sequence(count,num_start)
  result = []
  i = 1
  count.times do
    result.push(num_start * i)
    i += 1
  end
  result
end
=end

=begin
def sequence(count,num_start)
  result = []
  return result if count == 0
  (1..count).each {|i| result.push(num_start * i) }
  result
end
=end

def sequence(count,num_start)
  (1..count).map {|i| num_start * i }
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []