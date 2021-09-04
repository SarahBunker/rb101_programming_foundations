=begin
#------------------------------------------------------------------------------
PROBLEM:
create a method that can max rotate an integer preserving zeros until the end
input: integer
output: integer
rules:
    Explicit requirements:
      rotation is moving the first digit to the last digit
      zeros can't be dropped until the last result
      max rotation is rotating all the digits, then rotating all but the first digit, then rotating all but the last three digits... until you rotate only the last digit
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
123456
2[34561]
24[5613]
246[135]
2463[51]
p max_rotation(123456) == 246315
p max_rotation(120056) == 206015
p max_rotation(103406) == 046310
p max_rotation(123450) == 240315

123456789
..
246815973

p max_rotate(123456789) == 246815973
p max_rotate(100006000) ==   6010000

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method to rotate a single time(string)
-   isolate first character
-   add to end of other characters
    return string(to preserve digits)

- define method to rotate n digits(string)
-   reasign the last n digits by calling single rotate and assigning
-   return string

- define method to max rotate
-   iterate from the number of characters in the string, down to 1
    pass the integer as a string and the iteration to rotate n digits
    reassign result to new string
    convert new string to integer
-   return integer

=end

def rotate(string) # can't rotate an empty string
  return string if string.empty?
  string[1..-1] + string[0]
end

def rotate_n_digits(string, n)
  string[-n..-1] = rotate(string[-n..-1])
  string
end

def max_rotate(integer)
  int_as_string = integer.to_s
  size = int_as_string.size
  size.downto(1) do |n|
    int_as_string =rotate_n_digits(int_as_string,n)
  end
  int_as_string.to_i
end

p rotate_n_digits("Hello", 4)

p max_rotate(123456) == 246315
p max_rotate(120056) == 206015
p max_rotate(103406) ==  46310
p max_rotate(123450) == 240315

p max_rotate(123456789) == 246815973
p max_rotate(100006000) ==   6010000