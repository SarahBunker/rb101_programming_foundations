=begin
#------------------------------------------------------------------------------
PROBLEM:
Determine if a string can be composed of a substring of the string repeated
input: string with lowercase letters
output: boolean, true if it can be made from repeated substring
mutating? NA
rules:
    Explicit requirements:
      input will not be empty
      all lowercase letters
    Implicit requirements:
      substring can be one + letters
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
"abab" > true
"aba" > false

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- intialize substring to empty string
- set variable total to total length of string
- iterate through substrings with length 2 to 1/total length
  skip iteration if substring length doesnot divide evenly into total length (not a factor of total length)
  n = total / substring length only if it divides evenly [how many times it goes into the total length]
  attempt = substring * n 

  return true if attempt == string
  

- return false
- 

=end

def repeated_substrings_pattern(string)
  substring = ""
  total = string.size
  1.upto(total/2) do |length|
    substring = string[0,length]
    next unless total % length == 0
    return true if substring * (total / length) == string
  end
  false
end

# p repeated_substrings_pattern("slkdf  sldfj  sldkfj")

# p repeated_substrings_pattern("abab")           == true
# p repeated_substrings_pattern("aba")            == false
# p repeated_substrings_pattern("aabaaba")        == false
# p repeated_substrings_pattern("abaababaab")     == true
# p repeated_substrings_pattern("abcabcabcabc")   == true
# p repeated_substrings_pattern("aaaaa")          == true

=begin
#------------------------------------------------------------------------------
PROBLEM:
take an array of strings and output which letters are in all strings, include duplicates
input: array of strings
output: array characters that are in all of the strings from the array
mutating? no
rules:
    Explicit requirements:
      if a character occurs more then once in all strings include all occurances
      strings are all lowercase
    Implicit requirements:
      returns an empty arrayu if there are no characters similar between all of the strings
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example: p common_chars(["bella","label","roller"]) 

helper:
def char_included(char,return_array,words)
      num_char_included = 0
      add one to num_char_included if
        count char in word > count char in return array  
  
  
  return number_char_included
end
  
  

def common_chars(words)
  initialize return_array = []
  initialize num_char_included = 0
  access first string of array          "bella"
  split string into characters          [b,e,l,l,a]
  iterate over characters 
    # num_char_included = 0
    iterate over words                  ["bella","label","roller"]
      # add one to num_char_included if
      #   count char in word > count char in return array
      number_char_included = call char_included()
    if num_char_included == size of array  b: 2!=3, e:3==3, l: 3==3, l.., a:2!=3
      add char to return_array           [e,l,l]
  return return_array
=end

def char_included(char,return_array,words)
  num_char_included = 0
  words.each do |word|
    num_char_included += 1 if word.count(char) > return_array.count(char)
  end
  num_char_included
end

def common_chars(words)
  return_array = []
  num_char_included = 0
  words[0].chars.each do |char|
    num_char_included = char_included(char,return_array,words)
    return_array << char if num_char_included == words.size
  end
  return_array
end

# a = ["bella","label","roller"]



p common_chars(["bella","label","roller"])                        == ["e","l","l"]
p common_chars(["cool","lock","cook"])                            == ["c","o"]
p common_chars(["hello","goodbye","booya","random"])              == ["o"]
p common_chars(["aabbaaaa","ccddddd","eeffee","ggrrrr","yyyzzz"]) == []
