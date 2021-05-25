DIGITS_2 = {
   0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
   5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"
}

def integer_to_string(number)
  chars = number.digits.reverse.map{ |dig| DIGITS_2[dig] }
  string = ""
  chars.each { |char| string << char}
  string
end

def signed_integer_to_string(number)
  string = ""
  if number < 0
    string << "-"
  elsif number > 0
    string << "+"
  end
  num = number.abs
  string << integer_to_string(num)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

=begin
SOLUTION
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

<=> returns +1 if left side is greater then right
-1 if less then right
0 if equal to right
     good for knowing whether number is Positive, negative, or zero

=end