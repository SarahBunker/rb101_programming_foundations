=begin
#-------------------------------------------------
PROBLEM:
Determine the missing letter in a sequence of increasing letters in an array
input: array of characters stored as strings
output: character stored as a string
mutating? No
rules:
    Explicit requirements:
      
    Implicit requirements:
      keep the same upper or lower case
      all letters will have the have the same case
Unclear parts of problem?
Edge cases?
- empty array
- what if the missing letter is at the end of the array
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

define missing letter method
- takes array
- iterate through letters
    - if the next letter isn't the next letter in the al
    - return the next letter


=end

# def determine_missing_letter(letters)
#   letters.each_with_index do |char,index|
#     return char.next if letters[index+1] != char.next
#   end
# end


# p determine_missing_letter(['a','b','c','d','f']) == 'e' 
# p determine_missing_letter(['O','Q','R','S']) == 'P'
# p determine_missing_letter(["a","b","c","d","f"]) == "e"
# p determine_missing_letter(["O","Q","R","S"]) == "P"

############################################################
=begin
#-------------------------------------------------
PROBLEM:
Find all prime numbers between two numbers
input: two numbers
output: array of primes
mutating?
rules:
    Explicit requirements:
      include input numbers in prime list if they are prime
      can't use prime class
    Implicit requirements:
      1 is not prime
      a number is prime if it has only 1 and itself as factors
      assume integers given in order
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

def method prime?
- takes one integer
- returns false if 1
- returns true if 2
- iterate through 2 through half the given integer
  - divide the given number by the iterating number
  - return false if no remainder
- return true if finished iteration without finding another factor

def method find_primes
- takes two integers
- initalize result array
- iterate through the inclusive range between the two integers
  - check if number is prime
  - store number in result array if prime
- return result array
=end

# def prime?(num)
#   return false if num == 1
#   return true if num == 2
#   (2..num/2).each {|divisor| return false if num%divisor == 0}
#   true
# end

# def find_primes(num1, num2)
#   primes = []
#   (num1..num2).each {|num| primes << num if prime?(num)}
#   primes
# end

# p find_primes(3, 10) == [3, 5, 7]
# p find_primes(11, 20) == [11, 13, 17, 19]
# p find_primes(100, 101) == [101]
# p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# p find_primes(1, 2) == [2]


# p prime?(2) == true
# p prime?(1) == false
# p prime?(3) == true
# p prime?(8) == false

####################################################

=begin
#-------------------------------------------------
PROBLEM:
converting a string into a nested array that stores then name, age and occupation
input: string
output: nested array, with hash elements
mutating? No
rules:
    Explicit requirements:
      return empty array if string string is empty
    Implicit requirements:
      assuming that the input will always have the correct number of items, split in threes
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

def person_hash method
- take an array with three elements, all strings
- intialize an empty hash
- assign each element to correct symbol in hash
- returns hash

def organize method
- take a string
- intialize discription array
- return empty array when string is empty
- split string into elements split on comma space
- iterate through array
  - in groups of three
  - send to person_hash
  - store return hash in discription array
- return dis. array
=end

# def person_hash(person)
#   new_hash = {}
#   new_hash[:name] = person[0]
#   new_hash[:age] = person[1]
#   new_hash[:occupation] = person[2]
#   new_hash
# end

# def organize(people)
#   new_array = []
#   return new_array if people.empty?
#   people = people.split(", ")
#   people.each_with_index do |ele, index|
#     next if index % 3 != 0
#     new_array << person_hash(people[index,3])
#   end
#   new_array
# end

# p person_hash(["Conan O'Brien", "56", "Talk Show Host"])

# p organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor") 

# p organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor") == [
#   {:name=>"John Mayer", :age=>"41", :occupation=>"Singer"},
#   {:name=>"Emily Blunt", :age=>"36", :occupation=>"Actor"}
# ]

# p organize("Conan O'Brien, 56, Talk Show Host, Anna Wintour, 69, Editor") == [
#   {:name=>"Conan O'Brien", :age=>"56", :occupation=>"Talk Show Host"},
#   {:name=>"Anna Wintour", :age=>"69", :occupation=>"Editor"}
# ]

# p organize("") == []

# p organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor, Conan O'Brien, 56, Talk Show Host, Anna Wintour, 69, Editor") == [
#   {:name=>"John Mayer", :age=>"41", :occupation=>"Singer"},
#   {:name=>"Emily Blunt", :age=>"36", :occupation=>"Actor"},
#   {:name=>"Conan O'Brien", :age=>"56", :occupation=>"Talk Show Host"},
#   {:name=>"Anna Wintour", :age=>"69", :occupation=>"Editor"}
# ]

################################################################
=begin
#-------------------------------------------------
PROBLEM:
convert a string into a hash where the letters in the word are keys and the indices of the letters are stored in an array.
input: string, single word
output: hash
mutating? No
rules:
    Explicit requirements:
      keys: letters
      values: array with indices/integers
      letters stored as symbols
    Implicit requirements:
      
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

define map letters method
- takes a string
- initialize empty hash
- split word into characters
- iterate through characters with index
  - check if hash has char as key
    T: add index to index array
    F: add key value pair
- return new hash
=end

# def map_letters(word)
#   new_hash = {}
#   word.chars.each_with_index do |char, index|
#     if new_hash.key?(char.to_sym)
#       new_hash[char.to_sym] << index
#     else
#       new_hash[char.to_sym] = [index]
#     end
#   end
#   new_hash
# end

# p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
# p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
# p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }

#############################################################
=begin
#-------------------------------------------------
PROBLEM:
modify a given string by replacing each letter with the 3rd letter following
input: string
output: modified string
mutating? Yes
rules:
    Explicit requirements:
      c becomes f (cdef)
      Z becomes C (ZABC)
        loop around alphabet
      case matters
    Implicit requirements:
      ignore other characters
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

lowercase alphabet, with letters wrapped
uppercase ""

def letter_changes method
 - takes string
 - split string into characters
 - iterate through characters
    - determine which alpha arra to use
    - find index of match
    - replace letter with alpha array at index of match + 3
 - return string
=end

LOWERCASE = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z a b c)
UPPERCASE = LOWERCASE.map(&:upcase)

def letter_changes(string)
  characters = string.chars
  characters.each_with_index do |char,index|
    if LOWERCASE.include?(char)
      i = LOWERCASE.index(char)
      characters[index] = LOWERCASE[i+3]
    elsif UPPERCASE.include?(char)
      i = UPPERCASE.index(char)
      characters[index] = UPPERCASE[i+3]
    end
  end
  characters.join
end


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')


