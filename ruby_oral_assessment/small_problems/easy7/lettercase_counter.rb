=begin
#------------------------------------------------------------------------------
PROBLEM:
count the number of uppercase, lowercase, and niether characters in a string
input: string
output: hash containing counts::: keys:type value:count
rules:
    Explicit requirements:
      hash has three entries representing each group
    Implicit requirements:
      neither catagory is anything non alpha, including numbers and punction
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define a method
- get number of characters
- determine the number of lowercase characters
- add to hash
- determing the number of uppercase letters
- add to hash
- subtract previous two from total num of characters
- store as hash > neither

return hash

=end

def letter_case_count(string)
  num_lowercase = string.count("a-z")
  num_uppercase = string.count("A-Z")
  num_neither = string.count("^A-Za-z")
  { lowercase: num_lowercase, uppercase: num_uppercase, neither: num_neither }
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('Ab,Cd +Ef') == { lowercase: 3, uppercase: 3, neither: 3 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
