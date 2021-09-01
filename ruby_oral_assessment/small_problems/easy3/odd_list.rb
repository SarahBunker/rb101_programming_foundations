=begin
#------------------------------------------------------------------------------
PROBLEM:
return array with even index number elements
input: array
output: input array with only even number elements from original
rules:
    Explicit requirements:
    only return even elements
      
    Implicit requirements:
      empty array returns empty array
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.define method
2.initialize new array
3.iterate through array
4.add each element that is odd to new array
5.return new array
6.
7.
8.
9.
10.



=end
#def oddities(arr)
#  new_array = []
#  arr.each_with_index{|item, i| new_array << item if i.even?}
#  new_array
#end

def oddities(arr)
  i = 0
  arr.select do |item|
    i += 1
    i.odd?
  end
end

p oddities([2, 3, 4, 5, 6])     #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6])  #== [1, 3, 5]
p oddities(['abc', 'def'])      #== ['abc']
p oddities([123])               #== [123]
p oddities([])                  #== []