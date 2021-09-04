=begin
#------------------------------------------------------------------------------
PROBLEM:
rewriting swapcase
upcase => downcase
downcase => upcase
nonalpha characters remain the same

input: string
output: string.swapcase, new string
rules:
    Explicit requirements:
      can't use swapcase
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- Def method
- create lowercase array
- create uppercase array
- split string into characters
- itterate over character array
- compare character to each array (lowercase and uppercase)
- determine index of match
- get character from other array with same index
- return that character
- if not part of either lowercase or uppercase return the current char
- return new string

=end

LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a

def swapcase(string)
  new_string = ""
  string.chars.each do |char|
    index = LOWERCASE.index(char.downcase)
    if LOWERCASE.include? (char)
      new_string << UPPERCASE[index]
    elsif UPPERCASE.include? (char)
      new_string << LOWERCASE[index]
    else
      new_string << char
    end
  end
  new_string
end

p swapcase('CamelCase')         == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
