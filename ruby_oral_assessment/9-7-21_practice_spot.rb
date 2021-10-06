=begin
#------------------------------------------------------------------------------
PROBLEM:
Determine the top 3 most occuring words from a string
input: string
output: lowercase word in array where first element is the most common, to least common
mutating? assuming mutation is ok
rules:
    Explicit requirements:
      word is letters and can contain puntuation (')
      matches are case insensitive
      if less then 3 unique words in phrase return top-2, top1, or empty array as appropriate.
      
    Implicit requirements:
      assume that words are characters split by spaces
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE

split words into array
store word and count into array of top three
create a unique array of words
count number of times each unique word occurs and store in hash
sort by count > convert to array > take first three of array

#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
  initialize hash
- split words into array lowercased
- get array of unique values
- iterate through unique array
    count in first array
    store word and count in hash
  
- sort hash by count
- take first 3 hash keys and store in array
- return array
- 

=end

def top_3_words(string)
  hash = {}
  result = []
  array = string.downcase.delete('^\s^a-z\'').split
  array.uniq.each do |word|
    # word = word.delete('^a-z\'')
    # next if word == ""
    hash[word] = array.count(word)
    # number = array.count(word)
    
  end
  
  sorted = hash.sort_by { |key,value| value}.reverse
  # sorted.first(3).each {|word| result << word[0]}
  # result
end

p top_3_words("a bb bb ccc ccc ccc dddd dddd dddd dddd")

p top_3_words("a a a  b  c c  d d d d  e e e e e")                      #== ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")  #== ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ")                                  #== ["won't", "wont"]
# p top_3_words("  , e   .. ")                                            #== ["e"]
# p top_3_words("  ...  ")                                                #== []
# p top_3_words("  '  ")                                                  #== []
# p top_3_words("  '''  ")                                                #== []

# # p top_3_words("In a village of La Mancha, the name of which I have no desire to call to
# # mind, there lived not long since one of those gentlemen that keep a lance
# # in the lance-rack, an old buckler, a lean hack, and a greyhound for
# # coursing. An olla of rather more beef than mutton, a salad on most
# # nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# # on Sundays, made away with three-quarters of his income.") ==  ["a", "of", "on"]
# # # => ["a", "of", "on"]

# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") #== ["e", "ddd", "aa"]
# # => ["e", "ddd", "aa"]

# p top_3_words("  //wont won't won't") == ["won't", "wont"]

# # => ["won't", "wont"]


def top_3_words(str)
  str.downcase!
  return [] if  str.scan(/[a-z]/).empty?
  arr = str.scan(/[a-zA-Z']+/)
  arr.tally.sort_by { |a, b| b}.reverse.slice(0, 3).map(&:first)
end

+ sign groups words
scan

create hash

tally
group_by 

# Option 2
# def top_3_words(text)
#   text.scan(/[A-Za-z']+/)
#       .select { |x| /[A-Za-z]+/ =~ x }
#       .group_by { |x| x.downcase }
#       .sort_by { |k,v| -v.count }
#       .first(3)
#       .map(&:first)
# end

# Option 3 - new method #max_by (takes a method argument and a block)
# def top_3_words(text)
#  counts = Hash.new(0)
#   text.downcase.scan(/[a-z]+[a-z']*/) { |word| counts[word] += 1 }
#   counts.max_by(3) { |word, count| count}.map(&:first)
# end