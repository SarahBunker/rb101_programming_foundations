=begin
#------------------------------------------------------------------------------
PROBLEM:

input: 
output:
mutating?
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- save text file as an object
- split into sentences separated on . ? and !
- 
- 
- 
- 
- 
- 

=end

pg84 = File.open("pg84.txt")
text = pg84.read
sentences = text.split(/\.|\?|!/)
longest_sentance = ""
longest_sentance_size = 0

sentences.each do |sentence|
  if sentence.split.size > longest_sentance_size
    longest_sentance = sentence
    longest_sentance_size = sentence.split.size
  end
end

puts longest_sentance
puts longest_sentance_size