=begin
#------------------------------------------------------------------------------
PROBLEM:
swap the first and last letter of each word in a sentance
input: string
output: string
rules:
    Explicit requirements:
      every word contains at least one letter
      string will contain at least one word
      string will only have words and spaces
    Implicit requirements:
      words separated by spaces
      capitilization matters
      one letter words remain the same
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

define method
1. split string into words
2.itterate over the words
3.split each word into an array
4.access the first and last element of the word
5.swap places
6.join words with spaces to form sentance
7.
8.
9.
10.



=end

def swap(str)
  swapped_words = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  swapped_words.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'