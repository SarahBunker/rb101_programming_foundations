=begin
in: 2 arrays
out: one array
rules:
  new array contains all the elements from both arrays
  elements taken in alternation
  both inputs are non empty
  both inputs have same length
  
plot
1) initialize new array
2) remove first element from input1
3) add to new array
4) remove first element from input2
5) add to new array
6) repeat 1-5 until both arrays are empty
7) return new array
=end

def interleave(arr1, arr2)
  new_array = []
  loop do
    new_array << arr1.shift
    new_array << arr2.shift
    break if arr1.length == 0
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave(arr1,arr2)
  new_array = []
  arr1.each_with_index do |element, index|
    new_array << element << arr2[index]
  end
  new_array
end

def interleave(arr1,arr2)
  arr1.zip(arr2).flatten
end