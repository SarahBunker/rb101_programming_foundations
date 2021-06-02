=begin
string
second to last word in string
input string will always have at least two words

split string into words
access last word
return last word


=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

=begin
Further exploration
strings with just one word
empty strings
even number of words
telegram that uses words for punctuation

=end

=begin
in: string
out: middle word (string)
rules:
  empty string returns "" check
  even number of words returns both words separated by a space check
  one word returns that word
  
examples:
p middle_word("one two three") => "two"
p middle_word("one two three four") => "two three"
p middle_word("one two three four five") => "three"
p middle_word("one") => "one"
p middle_word("") => ""

plot:
1)initalize middle_word
2)find length of string > number of words
3)if empty return empty string
4)if odd get middle words
5)if even get two middle words
  get two words and add together with space separating
6)return middle_word string
=end

def return_middle_word(string)
  middle_word = ""
  words = string.split
  length = words.length
  return middle_word if length == 0
  if length.odd?
    middle_word = words[length/2]
  end
  if length.even?
    halfway = length/2
    middle_word << words[halfway-1] << " " << words[halfway]
  end
  middle_word
end

p return_middle_word("one two three")            == "two"
p return_middle_word("one two three four")       == "two three"
p return_middle_word("one two three four five")  == "three"
p return_middle_word("one")                      == "one"
p return_middle_word("")                         == ""