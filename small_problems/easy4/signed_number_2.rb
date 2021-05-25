DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

=begin
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
=end

def string_to_signed_integer(string)
  sign = 1
  # add plus sign if it doesn't have a "+" or "-"
  string = "+" << string if (string[0] != "-" && string[0] != "+")
  # change sign to negative if first value is "-"
  sign = -1 if string[0] == "-"
  # return the result of timesing the integer from string to integer by the sign
  sign * string_to_integer(string[1..-1])
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100