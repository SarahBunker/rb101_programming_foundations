=begin
#------------------------------------------------------------------------------
PROBLEM:
find running sum of array

input: array
output: array where each element is the sum of the previous elements
rules:
    Explicit requirements:
      has same number of elements
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:
def method
1. initialize variable to store total as 0
2. iterate through array
3. add each element to total and then store in new array
4. return new array
5.
6.
7.
8.
9.
10.



=end

#def running_total(arr)
#  sum = 0
#  arr.map {|int| sum += int}
#end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |num, new_arr|
    sum += num
    new_arr << sum
  end
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []