=begin
input: string
output: integer
rules
- can't use .to_i, Integer()
- use analyse of char in string

loop
  get end digit
  def: determine what number it is comparing "1" to 1
  times by the place (100th place)
  add to num_end
end

return num_end
=end

def char_to_int(char)
  case char
  when "0" then 0
  when "1" then 1
  when "2" then 2
  when "3" then 3
  when "4" then 4
  when "5" then 5
  when "6" then 6
  when "7" then 7
  when "8" then 8
  when "9" then 9
  end
end

def string_to_integer(string)
  array = string.chars
  dig_place = 1
  number = 0
  loop do
    char_i = array.pop
    num_i = char_to_int(char_i) * dig_place
    number += num_i
    dig_place *= 10
    break if array.length <= 0
  end
  number
end



p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

p string_to_integer("99")
p string_to_integer("0")
p string_to_integer("1")
p string_to_integer("782")
p string_to_integer("10045782")

=begin
do further exploration

use a hash to store conversions

value = 0
digits.each { |digit| value = 10 * value + digit }

use .each to itterate through


=end