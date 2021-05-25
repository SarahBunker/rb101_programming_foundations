=begin
in: string with 1+ space separated words
out: hash with key = word length, value = # of words that length
rules: word is any characters not including a space

separate on spaces
initialize empty hash

loop
find length of word
add length to hash if doesn't exist
add 1 to value if length does exist
end

return hash
=end

def word_sizes(string)
  word_hash = Hash.new(0)
  string.split.each {|word| word_hash[word.length] += 1}
  word_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}