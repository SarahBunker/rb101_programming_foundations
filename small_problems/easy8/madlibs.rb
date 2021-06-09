=begin
in: noun, verb, adverb, adjective
out: story with words injected

plot
get user input

=end



puts "Enter a date:"
date = gets.chomp
puts "Enter a name:"
name = gets.chomp
puts "Enter an adjective:"
adjective = gets.chomp
puts "Enter a noun:"
noun = gets.chomp
puts "Enter a different name:"
name2 = gets.chomp

excused = <<-FOO
Date: #{date}
Please excuse #{name}
who is far too #{adjective}
to attend #{noun} class.
Signed:
#{name2}
FOO

puts ""
puts excused