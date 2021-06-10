produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

=begin
in: hash
out: new hash with only key-value pairs where value is fruit
rules:

plot:

=end

def select_fruit(hash)
  hash.select{|_,value| value == "Fruit"}
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
=begin
in: array
out: array doubled
rules
  mutates array
  doubles every value in array
  
plot:

=end

def double_numbers(num_a)
  num_a.map!{|num| num*2}
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) == [2, 8, 6, 14, 4, 12]
p my_numbers

=begin
in: array
out: array with odd indices doubled
rule:
not mutate
only odd indices mutated

plot
access each element
if odd double
if even keep the same
=end

p "---------------------------"
my_numbers = [1, 4, 3, 7, 2, 6]

#def double_odd_index_numbers(numbers)
#  result = []
#  counter = 0
#  for num in numbers
#    result << num * 2 if counter.odd?
#    result << num     if counter.even?
#    counter +=1
#  end
#  result
#end

def double_odd_index_numbers(numbers)
  result = []
  numbers.each_with_index do |number,i|
    result << number*2 if i.odd?
    result << number if i.even?
  end
  result
end

p double_odd_index_numbers(my_numbers)  == [1, 8, 3, 14, 2, 12]

p "----------"

=begin
in: array. integer
out: array with each element multiplied by integer
rules

plot
result array
loop through elements
for each element times by integer
add to result array
=end

def multiply(array,mult)
  array.map{|num| num*mult}
end

def mult#iply(array,mult)
  #array.reduce(:*2)
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) == [3, 12, 9, 21, 6, 18]