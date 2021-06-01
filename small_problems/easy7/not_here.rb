=begin
string
second to last word in string
input string will always have at least two words

split string into words
access last word
return last word


=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'