=begin
in: string
out: string with first and last letters of each word switched
rules: will always have at least one word and each word will have at least one letter
  strings will only contain words and spaces
  
split string into words

func flip_word
new string = slice the middle of the word
take the last letter and add to front of new string
take the first letter and add to back of new string
end

add flipped words with spaces

=end

def flip_word(word)
  return word if word.length < 2
  new_string = word[-1]
  new_string << word[1..-2]
  new_string << word[0]
end

def swap(string)
  string.split.map{|word| flip_word(word)}.join(" ")
end

p swap("Hello goodbye")
p swap("June baby fly")
p swap("maybe")
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin
SOLUTION
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

common idiom to exchange values of a and b
a, b = b, a
=end