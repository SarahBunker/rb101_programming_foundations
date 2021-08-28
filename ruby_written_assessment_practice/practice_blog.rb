#What does the following code return? What does it output? Why? What concept does it demonstrate?

#a = 'hello'
#b = a
#a = 'goodbye'

=begin
Local variable `a` is inizialized to string object with value `'hello'` on line `1`.

On line `2` local variable `b` is initialized to the string object referenced by local variable `a`.
At this point both variables reference the same object.

On line `3` the local variable `a` is reassigned to string object `'goodbye'`. The local variables `a`
and `b` now reference different objects. `a` points to a string object with value `goodbye` and `b`
points to a string object with value `hello`.

This code shows variables as pointers
=end

# use "string object with value..."
# use more paragraphs

#What does the following code return? What does it output? Why? What concept does it demonstrate?

#def example(str)
#  i = 3
#  loop do
#    puts str
#    i -= 1
#    break if i == 0
#  end
#end
#
#a = example('hello')
#p a

=begin
The methed `example` is defined on line `25-32` which takes one parameter. On line `34` the method `
`example` is invoked with the string object `hello` passed to it as an arguement.

On line `26` the local variable i is initilized to an integer object with value 3.

On lines `27-31` a loop is used to iterate until local variable `i` reaches an integer value of `0`.

In the loop on line `28` the method `puts` prints to console the value stored in the parameter
variable str. On line `29` the local variable `i` is decreased in value by `1` and reassigned
to local variable `i`.

This method returns nil because of Ruby's implicit return value of method invocations where the
last evaluated expression of the method is returned by the method. The last evaluated expression
of the method `example` is a loop which returns `nil`. So the return value of this method is `nil`.
=end

#he codes out the 'line 4' not just line '4'
#assigning it to an integer with value 3, not integer object with value 3
#calling the method loop and passing in the do..end block as an arguement

### redoing this example because it has been a while
#def example(str)
#  i = 3
#  loop do
#    puts str
#    i -= 1
#    break if i == 0
#  end
#end
#
#example('hello')

=begin
On `lines 59-66 we are defining the method `example` which takes one parameter.
On `line 60` we initialize the local variable `i` and assign it to an integer with value `3`.
On `line 61-65` we call the method `loop` and pass the `do..end` block as an arguement.
On `line 62` we call the method `puts` and pass it the local variable `str`.
On `line 63` the local variable is reassigned to the return of the method `Integer#-` called on local variable `i` passing in the arguement integer `1`.
On `line 64` we are breaking out of the loop using the keyword `break` if the value of the object referenced by the local variable `i` is equal to `0`.
On `line 68`we are calling the method `example` and passing the string object "hello" as an arguement.
The code outputs string `hello` 3 times and returns nil.
=end

# What will this code output? Why
#a = 4
#
#loop do
#  a = 5
#  b = 3
#  break
#end
#
#puts a
#puts b
=begin
This code will output 4 and raises an error, undefined local variable or method b.
The local variable `a` is initialized on `line 82` and is accessible to the `puts` method on `line 90`.
The local variable `b` is initialized on `line 86` and is in the inner scope which is defined by the `do...end` block on `lines 84-88` so it is not accessible to the `puts` method on `line 91`.
=end

# What will this code output and why?

#a = 4
#b = 2
#
#loop do
#  c = 3
#  a = c
#  break
#end
#
#puts a
#puts b
=begin
This code will output integers `3` and `2`. This code will return `nil`
Local variable `a` is initialized to integer `4` on `line 100`. `a` is reassigned to the object referenced by local variable `c`. `c` was initialized to integer `3` on `line 104`, so the object referenced by local variable `a` has a value of `3`. The reference to this value is passed to the methods `puts` on `line 109`.
`b` is initialized on `line 101` to integer `2`.
=end

# What are the outputs and returns of the following code?

#[1, 2, 3, 4].each { |num| puts num }
#
#[1, 2, 3, 4].map { |num| puts num }
#
#[1, 2, 3, 4].select { |num| puts num }

=begin

All of the examples have the same output:
`1
2
3
4`

In the blocks of all the examples the return of the method `puts` is `nil`. The return of the block is the last evaluated expression which is `puts` so the block also returns `nil`.

`each`, `map`, and `select` each have different return values.

The first example returns the orignal array it was called on. In this case the array of integers with 4 elements from `1` to `4` because return of each is the original array of integers. The method `each` ignores the return of the block.

The second example returns an array of 4 elements with value `nil` because `map` uses the return of the block. It is stored in a new array and returned by the method. The return of the block is discussed above and is `nil`. The returned array has the same length as the array that `map` was called on because each iteration stores the return of the block in the new array.

The third example returns an empty array because the method `select` uses the return vaalue of the block to select elements from orignal collection to store in a new collection. If the block returns a truthy value when the element is passed to the block, the element is selected and stored in the collection. Since the return value of the block is `nil` for all iterations, no elements are selected and the empty array is returned.

[If the return of the block evaluates to `true`...]

#description of code

On `line 119` the method `each` is called on the array with elements of integers `1-4`. The method is passed the block denoted by `{...}`. The local variable `num` is defined as the block parameter. Within the block the method `puts` is called with the local variable `num` passed as an argument.

=end



arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2

