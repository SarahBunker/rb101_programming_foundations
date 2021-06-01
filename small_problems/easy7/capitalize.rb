=begin
in: string
out: string with first letters capitalized of every word
rules:
  word is sequence of non blank characters
  returns a new string

plot:
1)initialize new string
2)take each word and capitalize first letter
3)return new string

=end

def word_cap(string)
  string.split.map{|word| word.capitalize}.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
they used shorthand notation
  words.split.map(&:capitalize).join(' ')
the (&:method_name) is shorthand for { |item| item.method_name }

=end
LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a

def my_capitalize(char)
  i = LOWERCASE.index(char)
  return char if i == nil
  UPPERCASE[i]
end

def word_cap2(string)
  return "" if string == ""
  string.downcase!
  a = string.split.each do |word|
    word[0] = my_capitalize(word[0])
  end
  a.join(" ")
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'

#---------------------------------------------------
p "------------------"
def word_cap3(string)
  string.downcase!
  a = string.split.each do |word|
    word[0] = word.upcase[0]
  end
  a.join(" ")
end

p word_cap3('four score and seven')    == 'Four Score And Seven'
p word_cap3('the javaScript language') == 'The Javascript Language'
p word_cap3('this is a "quoted" word') == 'This Is A "quoted" Word'