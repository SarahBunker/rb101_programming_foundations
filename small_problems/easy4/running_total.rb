def running_total(array)
  return array if array.size == 0
  total = [array[0]]
  array.each_index do |i|
    next if i == 0
    total[i] = total[i-1] + array[i]
  end
  total
end

p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([]) == []


=begin
edit multiple lines
cntr + alt
down arrow
=end

=begin
try to solve with .map

Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).
=end

def running_total_2(array)
  total = 0
  array.map do |x|
    total += x
  end
end


p running_total_2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_2([3]) == [3]
p running_total_2([2, 5, 13]) == [2, 7, 20]
p running_total_2([]) == []

#.map returns the result of the block

def running_total_3(array)
  #total = 0
  #array_new = []
  array.each_with_object([]) do |i,x|
    next if i == 0
    x += array[i-1]
  end
end

p running_total_3([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_3([3]) == [3]
p running_total_3([2, 5, 13]) == [2, 7, 20]
p running_total_3([]) == []