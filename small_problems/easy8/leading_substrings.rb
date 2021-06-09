=begin
in: string
out: array of substrings that start at first letter
  arranged order smallest to biggest

plot:
initialize array
start count at index 0
get string that starts at first letter to current length
continue adding until last string added equals the original string
return array
=end

def leading_substrings(string)
  substring_array = []
  string.chars.each_index do |index|
    substring_array << string[0..index]
  end
  substring_array
end

p leading_substrings('abc')   == ['a', 'ab', 'abc']
p leading_substrings('a')     == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']