=begin
in: string
out: middle char(s)
rule:
  only works for non empty strings
  odd length returns middle char
  even length returns two middle char

plot:
find length of string
divide length by integer 2 = i
for odd this will be the index of the middle char
for even index is i-1 and i
use index to slice string
return slice

=end

def center_of(string)
  i = string.length/2
  return string[i-1,2] if string.length.even?
  string[i]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'