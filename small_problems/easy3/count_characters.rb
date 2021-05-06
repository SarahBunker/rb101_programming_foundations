=begin
input: string
output: # char 
rules
`count number of characters
`spaces don't count

get input string
store as string
convert to array of char
loop through array
  char != " " > increase counter
print result

or

... array of char
remove all white space
count length of array

=end

def prompt(message)
  puts "=> #{message}"
end

prompt("Please write word or multiple words:")
word_string = gets.chomp
word_array = word_string.chars

counter = 0
loop do
  char = word_array.pop
  counter += 1 if char != " "
  break if word_array.length == 0
end

prompt("There are #{counter} characters in #{word_string}")

=begin
not sure how to get the "" in the output string
probably an escape character

Solution
I didn't know how to delete all the spaces.
input.delete(' ') ~ deletes all spaces

I didn't know how to use "" in the output
... characters in \"#{input}\"

Other user solutions
.split.join.size

chars_no_spaces = words.chars.select {|char| char != " "}
chars_no_spaces.length

=end