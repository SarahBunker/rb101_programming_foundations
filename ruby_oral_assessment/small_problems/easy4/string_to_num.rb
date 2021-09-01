=begin
#------------------------------------------------------------------------------
PROBLEM:
convert string of digits to number without using .to_i, Integer()

input: string of digits
output: integer
rules:
    Explicit requirements:
      can't use ruby's fancy methods
      don't worry about leading + or - sign
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
string_to_integer('4321') == 4321
string_to_integer('570')  == 570

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.



=end

def char_to_int(char)
  num_hash = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8,"9" => 9, "0" => 0}
  num_hash[char]
end

def string_to_integer(str)
  total = 0
  digit_place = 1
  str.chars.reverse.each do |char|
    num = char_to_int(char)
    total += digit_place*num
    digit_place *= 10
  end
  total
end

p string_to_integer("1234")

p string_to_integer('4321') == 4321
p string_to_integer('570')  == 570

def string_to_signed_integer(string)
  sign = 1
  if string[0] == "-"
    string = string[1..-1]
    sign = -1
  elsif string[0] == "+"
    string = string[1..-1]
  end
  sign * string_to_integer(string)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

def int_to_char(int)
  num_hash = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8,"9" => 9, "0" => 0}
  num_hash.key(int)
end

#def integer_to_string(int)
#  new_string = ""
#  int.digits.reverse.each do|num|
#    new_string << int_to_char(num)
#  end
#  new_string
#end

def integer_to_string(int)
  int.digits.reverse.map{|num| int_to_char(num)}.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

def signed_integer_to_string(int)
  return "0" if int == 0
  return "-" << integer_to_string(int*-1) if int < 0
  "+" << integer_to_string(int) if int > 0
end

p signed_integer_to_string(4321)    == '+4321'
p signed_integer_to_string(-123)    == '-123'
p signed_integer_to_string(0)       == '0'
