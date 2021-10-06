=begin
#------------------------------------------------------------------------------
PROBLEM:
convert a string to the same string except one,two...nine, and zero strings are converted to a string of digits
input: string with numbers spelled out
output: string without numbers spelled out
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- create list of words to numbers
- split into words
- iterate over words
- if word is in list convert to number
- add word to new array
- join words to new string
- return new string
- 

=end

def word_to_digit(string)
  number_strings = %w(zero one two three four five six seven eight nine)
  number_strings.each do |num|
    string.gsub!(num, number_strings.index(num).to_s)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

