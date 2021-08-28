pet = "dog"

loop do |pet|
  pet = "cat"
  break
end

puts pet

# What does the code output and what does it return? What concept does this demonstrate?

=begin
The method `puts` returns `nil`. It outputs the value of the object referenced by the local variable pet.
=end

pet = "dog"

loop do |animal|
  pet = "cat"
  break
end

puts pet

# What does the code in line 8 output and what does it return? What concept does this demonstrate?

a = 'a'
b = []

3.times do
  a << '!'
  b << a
  p b
end

p b

# What does the code in line 9 output and what does it return? What concept does this demonstrate?

str = 'abc'
characters = ((0...str.size).each_with_object([]) do |i, arr|
  p arr
  p (arr +=  [str[i]])
  p arr
end)

p characters

# The output of this code is an empty array instead of ['a', 'b', 'c'].
# Explain why we get an empty array and fix the code inside the block to
# produce the given output.
def fix(value)
  value.concat('!')
  value = value.upcase
  value << 'xyz'
end
s = 'hello'
t = fix(s)

p t


p s == 'hello!'
p t == 'HELLO!xyz'

def fix(value)
  value.concat('!')
  value = value.upcase!
  value << 'xyz'
end
s = 'HELLO'
t = fix(s)

p t
p s

# What's does the code output and what does it return? Explain why we get this output. What does this demonstrate?

#calling upcase on something that already has all uppercase letters then it returns nill.