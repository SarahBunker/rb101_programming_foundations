=begin
in: two arrays
out: one array
rules:
  the new array contains product of the pairs of arrays
  input arrays have same number of ints

plot:
initialize new array
have something to track place in array
itterate through one array
using index from first array access the number in the other array
multiply and add to the new array
return new array
=end

def multiply_list(array1, array2)
  new_array = []
  array1.each_with_index do |num1,index|
    num2 = array2[index]
    new_array << num1*num2
  end
  new_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list2(array1, array2)
  new_array = []
  array1.zip(array2) {|x,y| new_array << x*y}
  new_array
end

p multiply_list2([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

#Further Exploration

# use .zip (and other method(s)) to create a one liner solution excluding def and end lines