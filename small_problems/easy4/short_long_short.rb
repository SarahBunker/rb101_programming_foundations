=begin
input: 2 strings
output: short, long, short strings conotated
rules:
`assume strings different lengths

get string
store
get second string
store
calculate lengths
if first is shorter ABA
if second is shorter BAB
return result

=end

def short_long_short(st1,st2)
  a = st1 + st2 + st1 if st1.size < st2.size
  a = st2 + st1 + st2 if st2.size < st1.size
  a
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

p short_long_short('abc', 'defgh') 
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

=begin
SOLUTION

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

A little more clear then my solution what is going on.
=end