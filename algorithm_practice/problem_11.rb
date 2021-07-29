=begin
PEDAC

Input two arguments, a string and an array of subarrays

Output integer, number of anagrams in those subarrays

Rules
Anagrams have the same letters but in a different order
Subarrays can be empty
Ignore capitalization

Questions
What happens if an input array contains duplicate anagrams?


Algorithm

##Main method##

Define a method `anagram_counter` that accepts two arguments, one named `word` which *should* contain a string, one named `arrays` for the array of sub_arrays

Initialize a local variable `num_anagrams` to 0
Iterate through the array of subarrays starting passing in each `sub_array` as the block parameter
  Iterate through the elements of each subarray passing in each `element` as the block parameter
	If `element` and ‘word’ are anagrams (done using the helper method below)
  	Increment `num_anagrams` by 1
  Close inner iteration loop
Close outer iteration loop
Return the variable `num_anagrams`
Close the method `anagram_counter`

## Helper method##
Define a method `anagram?` that takes in two parameters, `string_1` and `string_2`
If string_1 and string_2 are both String objects AND downcased string_1 and downcased string_2 are not equivalent AND they are equivalent when the strings are downcased, turned into an array of characters and sorted alphabetically
  Return true
Else
  Return false
Close the method `anagram?`
=end

def anagram_counter(word, arrays)
  num_anagrams = 0
  arrays.each do |substring|
    substring.each do |string|
      num_anagrams += 1 if anagram?(word,string)
    end
  end
  num_anagrams
end

def anagram?(string_1, string_2)
  if string_1.is_a?(String) && string_2.is_a?(String) &&
    (string_1.downcase != string_2.downcase) &&
    (string_1.downcase.chars.sort.join == string_2.downcase.chars.sort.join)
    return true
  else
    return false
  end
end

p anagram_counter('reap', [['scram', 'beat', 45, nil, 'pear'], [true, 'reap']]) == 1
p anagram_counter('meat', [['meat', 'mate', 'meaty', 'matey'], ['tame', 'team']]) == 3
p anagram_counter('VEIL', [['VILE', 'vile', 'evil'], []]) == 3
p anagram_counter('veil', [['VILE', 'evil'], []]) == 2
