=begin
in: string
out: new string
rule:
  characters in string are doubled if they are consonants
  vowels, digits, punctuation, whitespace are not doubled

plot:
  initialize return string
  for each char
    add to string
    add again if char is a consonant
  return string
=end

CONSONANTS = ("a".."z").to_a - %w(a e i o u)

def double_consonants(string)
  result = ""
  string.chars.each do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""