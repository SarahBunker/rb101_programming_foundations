###Local Variable Scope
###########################
#Practice showing which things create a new scope
array_nums = [1,2,3,4,5]

array_nums.each {|num| puts num}

#p num #Traceback (most recent call last):
#       local_var_scope_my_problems.rb:7:in `<main>': undefined local variable or method `num' for
#       main:Object (NameError)
#p "num is not avaible outside of the each statement, because .each is a method call on array_nums."

p "'num' is a variable that we initialized inside the block, so it is avalible only inside the block."

total = 0
array_nums.each do |num|
  total += num
end

p total

p "'total' was initialized outside the block so it is avalible inside the block."
puts
p "Methods create a self contained scope similar to code on a separate page"

int = 4
def a_method(int)
  int + 1
end

p a_method(6)
p int

p "line '30' the method call p prints 4 to console because the local variable 'int' within the"
p "method is a different local variable then the local variable initialized on line '4'"
puts 
p "This shows the concept that methods have a self-contained scope and can't access local variables"
p "initialized outside the method and that outside the method can't access variables from outside"
p "outside the method"

##########################
# Practice showing things that do not create a new scope
for i in array_nums do
  num_curr = i
end

p num_curr
p "The local variable 'num_curr' was initialized inside the for loop."
p "However, it is still accessible on line '47' because 'for' is part of the Ruby Language,"
p "and is not a method."

index = 0
while index < 3
  cur_index = index
  index += 1
end

p cur_index
p "The local variable 'cur_index' was initialized inside the 'while' loop."
p "Like the 'for' loop we are still able to access it outside the 'while' loop."

#############################
# Practice showing
# scope is different for method invocation with a block vs method definition

### Scope with Method Definition

array_nums_2 = [1,2,3,4,5]
def array_num_to_str
  array_nums_2.map {|num| num.to_s}
end

#puts array_num_to_str

p "The code above returns the error 'undefined local variable or method `array_nums_2'"
p "This shows that inside the method definition it can't access the outside variable."
p "This code can be fixed by passing the array as an arguement and adding a parameter to"
p "the definition to store the data."

def array_num_to_str(numbers)
  numbers.map {|num| num.to_s}
end

puts array_num_to_str(array_nums_2)

p "By adding the parameter 'numbers' on line '78' the code can access an array passed from"
p "the outside."
p "The local variable 'array_nums_2' is then passed to the method as an arguement on line '82'."

### Scope during Method Invocation with block

numbers_large = [1001,2002,3003,4004,5005]
cut_off = 3

numbers_small = numbers_large.map do |num|
  last_digit = num.digits.last
  puts last_digit
  if last_digit <= cut_off
    last_digit
  else
    cut_off
  end
end

p numbers_small
#p last_digit

p "Running the code on line '106' would cause an error because the local variable 'last_digit'"
p "was initialized inside the block following the method invocation of 'map'"
p "The local variable 'cut_off' was initialized outside the block, but it is still accessible"
p "by the block on line '98' and line '101'"
p "The inner scope of the block can access variables from the outer scope, but the outer scope"
p "cannot access the variables from the inner scope."

 # show how local variable scope works within a method definition
 
 #num2 = 5
 
 def addition(num1, num2)
   total = num1 + num2 #num2 is initialize outside the method and is not accible here.
 end
 p addition(3,4)
 
p total #total is initialized inside the method definition and is not accessible here.

# show how local variable scope works with blocks

letters = ("a".."z").to_a
numbers = (1..letters.size).to_a

letters.each_with_index{|char,index| puts "the letter #{char} is the #{numbers[index]} letter."}

########### Variable Shadowing ##########
# show an example of variable shadowing, and show how to fix it.

# the following example tries to use the local variable name to indicate John Doe's name and his
# work. The block won't be able to access the outer scope variable.
name = "John Doe"
work_hash = {"Ace Hardware" => 25}

work_hash.each { |name, wage| puts "#{name} works at #{name} store for $#{wage}/hr."}

# To fix this we can change one of the variables names to be more descriptive.
name = "John Doe"
work_hash = {"Ace Hardware" => 25}

work_hash.each { |store_name, wage| puts "#{name} works at #{store_name} store for $#{wage}/hr."}
