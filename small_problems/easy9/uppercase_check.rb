=begin
in: string
out: boolean
rules:
  return true if all alphabetic characters are uppercase
  non alphabetic characters should be ignored

plot
compare string to string.upcase
=end

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin
Further Exploration
why should "" return true?
because the condition is that all alpha characters are capitalized
since the string is empty this condition is met
=end