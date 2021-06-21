=begin
in: a list of words stored in array
out: print arrays containing groups of words that are anagrams of each other
rules:
  anagram > word has same letters in a different order

plot:
access first word
check if word is part of one of the subarrays of return nested array
skip if included
add word to new subarray
iterate through each other string is included(has same letters) as first string
  if it does add to subarray
continue with each word

anagram
  take two words
  split into character array
  sort
  compare

=end

def anagram(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def anagram_group(word_a)
  result = []
  word_a.each_with_index do |word,index|
    next if result.flatten.include?(word) #skip if you have already added this word
    
    subarray = [word]
    i = index + 1
    
    loop do
      break if i == word_a.length
      subarray << word_a[i] if anagram(word,word_a[i])  #add to subarray if anagram of first word
      i += 1
    end
    
    result << subarray
  end
  
  p result
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram_group(words)
p anagram("demo","dome")
p anagram("demo","fowl")
          
#["demo", "dome", "mode"]
#["neon", "none"]
#(etc)

arr = [["demo", "dome", "mode"],["neon", "none"]]
p arr.flatten.include?("dome")
p arr

#do this exercise using a hash in the intermediary and no second function to determine
#if it is an anagram