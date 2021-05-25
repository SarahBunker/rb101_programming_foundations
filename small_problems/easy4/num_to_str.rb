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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

=begin
I needed to reverse the array since digits returns the numbers in an array with the first value
being the ones place second value the 10s

I had to use << so that string was modified.
=end

=begin
They switched to using an array instead because getting the string is simple using brackets
5 to "5"
DIGITS[5] = "5"

SOLUTION

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

=end

##################################
=begin
FURTHER EXPLORATION
Mutators that don't end in !

Array
------
append/push
clear
concat
delete
keep_if
pop
prepend/unshift
replace
shift

String
-----
<< / concat
[]     ?
clear
replace
insert
prepend
to_s
to_str 

Hash
-----
clear
delete_if
keep_if
rehash
replace
update



=end