

#puts "what is your name?"

#response = gets.chomp

#puts response

=begin
Kernel must be capilized
Kernel is an object, not a method, so no ()
=end

=begin

user_input = gets

name = nil
loop do
  name = user_input
  break
end

if user_input
  puts "Hello " + name
end

def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting

=end

def extend_greeting(greeting)
  greeting << " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting

=begin
def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting

----------
why does this work?
Change greeting + " there" to greeting << " there".
=end

var1 = 3

def a_method(a_param)
  a_param = 4
  puts a_param
end

puts var1
a_method(var1)
puts var1

#---------------------



def name
  "George"
end

name = "Lisa"

loop do
  puts name
  break
end