=begin
get user name
check if name ends in !
if reply in caps with Why are we screaming
else reply hello bob
=end

puts "What is your name?"
name = gets.chomp

if name[-1] == "!"
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

=begin
I didn't realize that my text still had an exclamation mark on the end of the name.
.chop ~ unconditionally removes the last character from a string.
=end