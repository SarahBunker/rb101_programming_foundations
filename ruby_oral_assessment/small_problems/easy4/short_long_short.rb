=begin
#------------------------------------------------------------------------------
PROBLEM:
combine given strings with short, long short

input: 2 strings
output: one string combination of the 2 strings
rules:
    Explicit requirements:
      strings added in short, long, short
      strings will have different lengths
      
    Implicit requirements:
      can have an empty string in which case return is longer string
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1. Define method
2. compare lengths of strings
3. add in short, long, short order
4. return new string
5.
6.
7.
8.
9.
10.



=end

def short_long_short(str1, str2)
  return str1 + str2 + str1 if str2.size > str1.size
  return str2 + str1 + str2 if str1.size > str2.size
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"