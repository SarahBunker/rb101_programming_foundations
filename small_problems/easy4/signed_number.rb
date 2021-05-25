=begin

=end

DIGITS = {
  "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
  "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0
}

def return_sign(char)
  
end

def return_digit(char)
  
end

def string_to_signed_integer(string)
  sign = 1
  digits = []
  if string.size == 0
    return []
  else
    if string.include?("-")
      sign = -1
      string.delete!("-")
    else
      string.delete!("+")
    end
    digits = string.chars.map{ |char| DIGITS[char]}
  end
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value *= sign
  
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570

p string_to_signed_integer("+4321")
p string_to_signed_integer("-4923")

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

=begin
practice this one
further exploration

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
=end