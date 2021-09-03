=begin
#------------------------------------------------------------------------------
PROBLEM:
count the number of words that have different sizes of words and store results in hash that is returned by method

input: string
output: hash: key is word length, value is number of words with that length
rules:
    Explicit requirements:
      words are separated by spaces
    Implicit requirements:
      empty string returns an empty hash
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

define method
initialize empty hash
1. split string into words
2. iterate through words
3. determine size of word
4. determine if hash has key with size of word
5.   if not add key: size with value: one
6.   if so  increment value of key
7. return hash
8.
9.
10.



=end
ALPHAS = ("a".."z").to_a.map(&:to_s).join

def word_sizes(str)
  result = Hash.new(0)
  str.split.each do |word|
    size = word.chars.count{|char| ALPHAS.include?(char.downcase)}
    result[size] += 1
  end
  result
end

p word_sizes('Four score and seven.')                       == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!')  == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?")                              == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('')                                            == {}
