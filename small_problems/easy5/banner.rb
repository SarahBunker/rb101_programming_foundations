=begin
in: string
out: string padded with box

len = length of string
# 2 + length of string is # of -, " ", skip , " ", and -

str1 = "+"
str2 = "|"
loop (len + 2) #.times
str1 << "-"
str2 << " "
end
str1 << "+"
str2 << "|"

str3 = "| " + string + " |"

p str1
p str2
p str3
=end

def print_in_box(string)
  len = string.length
  str1 = "+"
  str2 = "|"
  (len+2).times do
    str1 << "-"
    str2 << " "
  end
  str1 << "+"
  str2 << "|"
  
  str3 = "| " + string + " |"
  
  puts str1
  puts str2
  puts str3
  puts str2
  puts str1
end

print_in_box("Hello World")

print_in_box('To boldly go where no one has gone before.')

=begin
SOLUTION
def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

so I wasn't far off, the new bit is #{'-' * (message.size + 2)}
they also did a better job naming thier strings
horizontal_rule makes more sense then str1


=end