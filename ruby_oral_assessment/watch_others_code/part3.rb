=begin
#------------------------------------------------------------------------------
PROBLEM:
find the maximum sum of a continous sub array
input: array of positive and negative integers
output:
mutating?
rules:
    Explicit requirements:
      it all integers are positive returns sum of all elements of the array
      if all int are negative return 0
      empty arrays return zero
      empty array is a valid subarray(so you can return 0 if all sequences would return - numbers)
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]
p max_sequence([]) == 0
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

create subarrays starting at first index to end
next number to end
next to next number to end...

initialize hash with blank array and zero
sum subarrays
store subarray and sum in hash
replace subarray and sum in hash if sum greater
return sum in hash

=end

def sum_sub(array)
  return 0 if array.empty?
  array.reduce(&:+)
end

def fill_subarray(array)
  return [array] if array.size <= 1
  end_index = array.size - 1
  new_array = []
  0.upto(end_index) do |start_index|
    end_index.downto(start_index) do |temp_end|
      new_array << array[start_index,temp_end]
    end
  end
  new_array
end

def max_sequence(array)
  max_sum = 0
  return 0 if array.all?{|num| num < 0}
  sub_arrays = fill_subarray(array)
  sub_arrays.each do |subarray|
    max_sum = sum_sub(subarray) if sum_sub(subarray) > max_sum
  end
  max_sum
  #max_hash.values[0]
end

p fill_subarray([4, -1, 2, 1])
p fill_subarray([11])


p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6 #=> [4, -1, 2, 1]
p max_sequence([]) == 0
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12