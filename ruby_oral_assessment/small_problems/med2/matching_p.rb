=begin
#------------------------------------------------------------------------------
PROBLEM:
determine if a string has matching parenthesis
input: string
output: boolean
mutating?NA
rules:
    Explicit requirements:
      parenethesis must occur in matching ( and ) pairs
    Implicit requirements:
      they also have to come in the correct order
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false not enough
balanced?('Hey!') == true   no parenthesis
balanced?(')Hey!(') == false   incorrect order
balanced?('What ((is))) up(') == false  incorrect order
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- intialize counter to 0
- string split into characters
- iterater over the characters
- if the character is "(" add 1 to counter
- if the character is ")" subtract 1 to counter
- if counter is < 0 return false

- if counter is > 0 return false
- true

=end
def balanced_paren?(string)
  counter = 0
  string.chars.each do |char|
    counter += 1 if char == "("
    counter -= 1 if char == ")"
    return false if counter < 0
  end
  
  counter.zero?
end

def balanced_square?(string)
  counter = 0
  string.chars.each do |char|
    counter += 1 if char == "["
    counter -= 1 if char == "]"
    return false if counter < 0
  end
  
  counter.zero?
end

def balanced_curly?(string)
  counter = 0
  string.chars.each do |char|
    counter += 1 if char == "{"
    counter -= 1 if char == "}"
    return false if counter < 0
  end
  
  counter.zero?
end

def balanced_single_quot?(string)
  string.chars.count("'").even?
end

def balanced_double_quot?(string)
  string.chars.count("\"").even?
end

def balanced?(string)
  balanced_paren?(string) &&
  balanced_square?(string) &&
  balanced_curly?(string) &&
  balanced_single_quot?(string) &&
  balanced_double_quot?(string)
end


p balanced?('What (is) this?')      == true
p balanced?('What is) this?')       == false
p balanced?('What (is this?')       == false
p balanced?('((What) (is this))?')  == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!')                 == true
p balanced?(')Hey!(')               == false
p balanced?('What ((is))) up(')     == false

puts "----------"
p balanced?("{me}]")
