=begin
#------------------------------------------------------------------------------
PROBLEM:
take a string and remove all the doubles and then return the new string
input: string with double letters
output: string without
rules:
    Explicit requirements:
      can't use String#squeeze
    Implicit requirements:
      string can be empty or have only one letter
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- initialize empty string
- split string into characters
- iterate through characters
- if the last character of the string is not the current character, then add to string
- return new string
- 
- 
- 
if the string is empty, will retrieving the last string return, probably returns nil
and that won't match the character

=end

#def crunch(string)
#  new_string = ""
#  string.chars.each do |char|
#    new_string << char unless (new_string[-1].downcase == char.downcase)
#    new_string
#  end
#  new_string
#end

def crunch(string)
  new_string = ""
  string.chars.each do |char|
    if new_string[-1]
      new_string << char unless (new_string[-1].downcase == char.downcase)
    else
      new_string << char
    end
    new_string
  end
  new_string
end


p crunch('Ddaaiillyy ddoouubbllee') == 'Daily double'
p crunch('4444abcabCcba')           == '4abcabCba'
p crunch('ggggggggggggggg')         == 'g'
p crunch('a')                       == 'a'
p crunch('')                        == ''
