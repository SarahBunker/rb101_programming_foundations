=begin
in: nested array of fruits with quantities
out: 1d array of fruits repeated the number of quantity
rules:

plot:
initialize return array
access sub array
add fruit string quant times to return array

return array
=end

=begin
def buy_fruit(g_list)
  result = []
  g_list.each {|item| item[-1].times {result << item[0]} }
  result
end
=end
def buy_fruit(g_list)
  g_list.map {|fruit, quant| [fruit] * quant} .flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
=begin
you can use block parameters to access subarray elements
have to use fruit in array to get separate array elements
have to flatten to a 1D array
array#flatten
=end