=begin
in: string
out:array of substrings
rules:
  substrings included in array are palidromes from original array
  all palidromes are included 
  palidrome:
    same sequence forward and backward
  duplicate palidromes included multiple times
  values arranged in array based on where the palidrome started
    arranged smallest to biggest after sorted by the starting value
  case sensitive
  single characters are not included
  use substrings method from previous example
  
plot:
initialzie palidrome array
use substrings to get array of all possible combinations
for each item in array check if reversed value  is equivalent to original value
  if it is add to return array
return palindrome array
=end

def leading_substrings(string)
  substring_array = []
  string.chars.each_index do |index|
    substring_array << string[0..index]
  end
  substring_array
end

def substrings(string)
  result_array = []
  string.chars.each_index do |index|
    small_string = string[index..-1]
    result_array << leading_substrings(small_string)
  end
  result_array.flatten
end

def palindromes(string)
  palindrome_array = []
  substring_array = substrings(string)
  substring_array.each do |x|
    next if x.length <= 1
    palindrome_array << x if x == x.reverse 
  end
  palindrome_array
end

p palindromes('abcd')                          == []
p palindromes('madam')                         == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes')            == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]