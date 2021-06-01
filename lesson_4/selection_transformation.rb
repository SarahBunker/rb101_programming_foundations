#In this example we want to select the key-value pairs where the value is 'Fruit'.
puts "hash fruits exercise"

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  hash_fruit = Hash.new
  hash.each{|name,type| hash_fruit[name] = type if type == "Fruit"}
  hash_fruit
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

=begin
their solution used a loop instead of a method
=end

#------------------------------------
puts "double the numbers"
def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers
end
my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers

#----------------------------------
puts "exercise"
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]

#----------------------------------------------------

puts "double the numbers"
def multiply(numbers,multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * multiplier

    counter += 1
  end

  numbers
end
my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers,3) # => [2, 8, 6, 14, 4, 12]
p my_numbers