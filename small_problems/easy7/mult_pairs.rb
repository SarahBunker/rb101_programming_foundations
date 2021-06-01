=begin
in: two arrays
out: one array, new array
rules:
  arrays contain lists of numbers
  new array contains the product of every pair of numbers that can be formed between the elements
    of the two arrays
  result sorted by increasing value
  
  ?can the arrays have duplicates?

plot:
  obtain first number in first array
    multiply by first number in second array
    add to new array
    repeat until end of second array
  repeat until end of second array
  sort array
  return array
=end

def multiply_all_pairs(array1, array2)
  new_array = []
  array1.each do |num1|
    array2.each {|num2| new_array << num1*num2}
  end
  new_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]