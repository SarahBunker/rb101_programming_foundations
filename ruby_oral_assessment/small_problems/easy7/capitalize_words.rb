=begin
#------------------------------------------------------------------------------
PROBLEM:
capitalize the first character of every word, all other characters must be lowercase
input: string
output: new string
rules:
    Explicit requirements:
      capitalize the first character(not letter) of every word
      lowercase all other letters
      words separated by spaces
    Implicit requirements:
      the first character could be punctuation
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- split into words
- iterate over the words
- capitalize each word
- combine into string
- return new string
- 
- 

=end

def word_cap(string)
  string.split.each{|word| word.capitalize!}.join(" ")
end


p word_cap('four score and seven')    == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
