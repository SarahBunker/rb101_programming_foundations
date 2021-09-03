=begin
#------------------------------------------------------------------------------
PROBLEM:
remove vowels from array of strings

input: array of strings
output: array with strings without the vowels
rules:
    Explicit requirements:
      
    Implicit requirements:
      keep strings in the same position in the array
      keep captization
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- iterate through array
- remove vowels from each string
- return new array
- 
- 
- 
- 

=end

def remove_vowels(arr)
  arr.map {|string| string.delete("aeiouAEIOU")}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
