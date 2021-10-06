=begin
#------------------------------------------------------------------------------
PROBLEM:
determining if a word can be spelled with the given block
this means the word can't have both letters on the block in the word
input: string representing the word
output: boolean: true > yes it can be spelled
mutating? NA
rules:
    Explicit requirements:
      Each block can only be used once, no duplicate letters
      words can't use both letters from one block
    Implicit requirements:
      must deal with upper and lowercase
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

#------------------------------------------------------------------------------
ALGORITHM
example:

- define block_word?(string)
- return false if string has multiple letters

- created nested array of each of the pairs
- itterate through array
    -if the first element and last elements are both included return false
    
  return true
- 
- 
- 

=end

# def block_word?(string)
#   return false if string.chars != string.chars.uniq
  
#   spelling_blocks = [%w(B O),%w(G T), %w(V I), %w(X K), %w(R E), %w(L Y), %w(D Q), %w(F S), %w(Z M), %w(C P), %w(J W), %w(N A), %w(H U)]
  
#   string.upcase!
#   spelling_blocks.each do |a,b|
#     return false if string.include?(a) && string.include?(b)
#   end
  
#   true
# end

def block_word?(string)
  string_cap = string.upcase
  spelling_blocks = "BO GT VI XK RE LY DQ FS ZM CP JW NA HU"
  spelling_blocks.split.none? { |block| string_cap.count(block) >=2}
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('butch') == false
p block_word?('jest') == true
