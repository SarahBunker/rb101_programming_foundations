# In this example we want to select the key-value pairs where the value is 'Fruit'.
def select_fruit(hsh)
  hsh.select{|key,value| value.downcase == "fruit"}
end



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}

# multiplies each element in the collection by 2.
# Can you implement a double_numbers! method that mutates its argument?

def double_numbers(arr)
  arr.map!{|num| num*2}
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) == [2, 8, 6, 14, 4, 12]
p my_numbers == [2, 8, 6, 14, 4, 12]

# Suppose we wish to now write a more generic general_select method so that we can
#specify whether we're interested in selecting fruits or vegetables.
puts "Example"

def general_select(hsh,selection_criteria)
  hsh.select{|key,value| value == selection_criteria}
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit')     == {"apple"=>"Fruit", "pear"=>"Fruit"}
p general_select(produce, 'Vegetable') == {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
p general_select(produce, 'Meat')      == {}