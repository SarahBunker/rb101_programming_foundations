=begin
in:string
out:new string with all the doubles reduced to single character


split string into chars
comp_char = first char string.unshift?
add comp_char to new string

loop
  compare current char to comp_char
  if different replace comp_char with current char
    add to new string
  else
    next
  end
=end

def crunch(string)
  new_string = ""
  comparision_char = ""
  string.chars.each do |x|
    if x != comparision_char
      new_string << x
      comparision_char = x
    end
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin
Further Exploration
...START HERE...
=end
p "FURTHER EXPLORATION"
def crunch2(text)
  index = 0
  crunch_text = ''
  while index < text.length
    break if index == text.length
    p "index is #{index}"
    p "text[index] is #{text[index]}"
    p "text[index+1] is #{text[index+1]}"
    crunch_text << text[index] unless text[index] == text[index + 1]
    p crunch_text
    index += 1
    
  end
  crunch_text
end

p crunch2("")

# p crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch2('4444abcabccba') == '4abcabcba'
# p crunch2('ggggggggggggggg') == 'g'
# p crunch2('a') == 'a'
p crunch2('') == ''# 

=begin
stopping when the index is equal to the text length doesn't affect the loop at all. because
the text length could be 3, but the last index will be 2.
we compare the last value to the nil value because that allows us to add it if it is unique.

my solution uses .chars and I don't know why they didn't
I think the solutions are comparable

Do
Regexp
read intro to regular expressions

=end