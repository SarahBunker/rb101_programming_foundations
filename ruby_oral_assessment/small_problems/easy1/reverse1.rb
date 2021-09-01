=begin
#------------------------------------------------------------------------------
PROBLEM:
write a method that takes a string and reverses the order of the words in the string
input: string
output: string
rules:
    Explicit requirements:
      any number of spaces outputs ''
    Implicit requirements:
      spaces are considered a new word
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
#------------------------------------------------------------------------------
DATA STRUCTURE
strings

#------------------------------------------------------------------------------
ALGORITHM
1. define method
  a. split string into words array
  b. reverse words array
  c. join with spaces separating
  d. return string

=end

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

=begin
#------------------------------------------------------------------------------
PROBLEM:

input: string with 1+ words
output: string with words>= 5 chars reversed and other words kept the same
rules:
    Explicit requirements:
      words that are greater then 5 chars, characters reversed
      words <= chars are not reversed
      include spaces only when more then 1 word
      input string will only include letters and spaces
    Implicit requirements:
      capitialization is kept the same
      assuming that I don't want the method to mutate
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts reverse_words('Professional')          == "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School')         == "hcnuaL loohcS"
#------------------------------------------------------------------------------
DATA STRUCTURE
string > array of words > each word will become an array of chars > word(string) > sentance (string)
new string to store reversed array

#------------------------------------------------------------------------------
ALGORITHM
1. def method
  initialize new array
  a. split sentance into words
  b. itterate over words
    1. compare length of word to 5
    2. if greater then or equal to 5
      i. split into array of chars.
      ii. reverse array
      iii. convert array to string
  c. add word back to new array
  d. convert to string separated by spaces
  e. return new string
=end

LENGTH_OF_WORD = 5

def reverse_words(string)
  word_array = string.split.map do |word|
    #word.reverse! if word.size >=5
    #word
    if word.size >= LENGTH_OF_WORD
      word.reverse
    else
      word
    end
  end
  word_array.join(" ")
end
  
puts "second example"
puts reverse_words('Professional')          == "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School')         == "hcnuaL loohcS"

puts "exploring"

hsh = {1 => "1", 2 => "2", 3 => "3"}
hsh.reverse_each {|item| p item}