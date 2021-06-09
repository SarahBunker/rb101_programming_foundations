=begin
in: string
out: array with all substrings
rules:
  ordered by where the in the string the substrings begin
  secondary order, string that begin with the same value should be ordered from smallest to biggest
  use method from previous question
  
plot:
iterate through array
at each item call leading substrings to create an array
  using the string made from that letter to the end
add smaller array to bigger array
return bigger array
=end

def leading_substrings(string)
  substring_array = []
  string.chars.each_index do |index|
    substring_array << string[0..index]
  end
  substring_array
end

def substrings(string)
  result_array = []
  string.chars.each_index do |index|
    small_string = string[index..-1]
    result_array << leading_substrings(small_string)
  end
  result_array.flatten
end

p substrings("abc")
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]