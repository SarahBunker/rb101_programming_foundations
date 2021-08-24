experiment = [["???", "!!!", "?!?!"], ["select_me!", "please_select_me?", "how about_me?"], ["what does it mean to be a string?", 'true']]

new_experiment = (experiment.map do |array|
  array.each { |string| string.include?('?') }
end)

p new_experiment

p experiment.object_id
p new_experiment.object_id

a = "Sarah"
b = "Sarah"

p a.object_id
p b.object_id

#disect this code line by line
=begin
the local variable 'experiment' is initialized to a nested array with the sub arrays containing
string elements
on line '3' the method map is called on 'experiment' and the local variable 'array' is set to the
value of 

because each always returns the calling collection

strings, arrays, hashes are mutable
integers and symbols are immutable
the object id of the same integer will be the same
but the object id of the same string will be different
immutable objects will always have the same object id for each number, or symbol

=end

experiment = [["???", "!!!", "?!?!"], ["select_me!"], ["what does it mean to be a string?", 'true']]

new_experiment = (experiment.select do |array|
  array.select { |string| string.include?('?') }
end)

p experiment == new_experiment


# The inner select always returns an array which is truthy so the outer select will return 
# always returns a new array that is a copy of the first array



#--------------------------------------------------------------------------
#Other practice problems
# # Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

# p find_primes(3, 10) == [3, 5, 7]
# p find_primes(11, 20) == [11, 13, 17, 19]
# p find_primes(100, 101) == [101]
# p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# p find_primes(1, 2) == [2]

# =begin
# You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# If no bigger number can be composed using those digits, return -1:
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1
# =end

# p next_bigger_num(9) == -1
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# =begin
# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.
# =end

# determine_missing_letter(['a','b','c','d','f']) == 'e' 
# determine_missing_letter(['O','Q','R','S']) == 'P'
# determine_missing_letter(["a","b","c","d","f"]) == "e"
# determine_missing_letter(["O","Q","R","S"]) == "P"

# # Given two arrays of strings a1 and a2 return a sorted array r in alphabetical order of the strings of a1 which are substrings of strings of a2.

# substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
# substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
# substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
# substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []

=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array
Output:  1 string
---------------------------RULES-----------------------------------------
Explicit:  
  -Find the missing character in the array of consecutive strings
  -Array will always be valid
  -There will always be exactly 1 letter missing
  -Array length will always be at least 2
  -ALl letters in the array will be cased the same
Implicit:  
  -

--------------------------EXAMPLES---------------------------------------
['O','Q','R','S'] == 'P'
    ^
The 'P' is missing from this sequence
Returns 'P'

----------------------------ALGO-----------------------------------------

--> method --> determine_missing_letter(array) --> string
  -initialize 'alpha' to an array of upper and lowercase letters
  -intialize 'current_index' to the index of the first char in given array within the alpha array
  -iterate through the given array utilizing index
    -if index is 0 go to next
    -if current elements index within the alpha array is not equal to 'current_index' plus 1
      -return the character from alpha at 'current_index' plus 1
    -otherwise
      -next
  
  
=end

def determine_missing_letter(arr)
  alpha = ('A'..'z').to_a
  current_index = alpha.index(arr.first)
  arr.each_with_index do |char, index|
    next if index == 0
    if alpha.index(char) != current_index + 1
      return alpha[current_index + 1]
    end
    current_index += 1
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'e' 
p determine_missing_letter(['O','Q','R','S']) == 'P'
p determine_missing_letter(["a","b","c","d","f"]) == "e"
p determine_missing_letter(["O","Q","R","S"]) == "P"

def determine_missing_letter(arr)
  arr.each_with_index do |char, index|
    return char.next if char.next != arr[index + 1]
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'e' 
p determine_missing_letter(['O','Q','R','S'])     == 'P'
p determine_missing_letter(["a","b","c","d","f"]) == "e"
p determine_missing_letter(["O","Q","R","S"])     == "P"

=begin
-----------------------INSTRUCTIONS--------------------------------------
# Given two arrays of strings a1 and a2 return a sorted array r in alphabetical order of the strings of a1 which are substrings of strings of a2.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Arrays
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:  
  -Return a sorted alphabetically array of all strings within arr1, that are substrings of the strings in arr2. 
  -
Implicit:  
  -all array arguments will contain strings/not be empty
  -all strings will be lowercase
  -strings may contain some special characters

--------------------------EXAMPLES---------------------------------------
["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]
'arp' is a substring of 'harp'
'live' is a substring of 'lively'
'strong' is a substring of 'armstrong'

==> ["arp", "live", "strong"]

----------------------------ALGO-----------------------------------------

-- method --> substrings(array, array) --> array
  -initialize 'subs' to an empty array
  -iterate through the second array (full_str)
    -iterate through the first array (small_str)
      -if the full_str contains the current small_str
        -push small_str to subs
  -return all unique strings in subs sorted alphabetically

=end

def substrings(arr1, arr2)
  subs = []
  arr2.each do |full_str|
    arr1.each do |small_str|
      subs << small_str if full_str.include?(small_str)
    end
  end
  subs.uniq.sort
end

p substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
p substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
p substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
p substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []