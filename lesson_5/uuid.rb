=begin
P: create a UUID
in - nothing, just call method and it creates a UUID
out - string
E:
D:
end result is a string
8-4-4-4-12  lengths of sections
A:
rand (range)
  rand number within range
A random number hexidecimal length ?
    between x and y
    for length 8 it would be the lowest number in base 10 digits that makes an 8 digit hexidecimal and the largest number that makes an 8 digit hexidecimal
    pre calculate the largest and smallest for 4, 8, and 12
    store in hash, key is int, value is array of min and max
    use rand(range) to get random number between min and max
B conversion from a single number to hexidecimal string
    use hash to store key value pairs
    key is base 10 number
    value is hexidecimal string
    return string
C convert a number into a hexidecimal string
    divide number by 16
    convert remainder to hexidecimal (B)
    add hexidicimal string to front of string
    use quotient for next loop until quotient == 0
    return string

#8
get random number
convert number to hexidecimal
add hexidecimal to string
add "-"

repeat for remaining lengths

C:
=end
#--------------------------
DEC_TO_HEX = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9", 10 => "a", 11 => "b", 12 => "c",
  13 => "d", 14 => "e", 15 => "f"}
#---------------------------
def find_largest_ndigit_hex(n)
  hex_string = ""
  n.times {hex_string << "f"}
  hex_string
end

def find_smallest_ndigit_hex(n)
  hex_string = "1"
  n -=1
  n.times {hex_string << "0"}
  hex_string
end
#-----------------
def single_dec_to_hex(int)
  return DEC_TO_HEX[int] if (0..15).include?(int)
  puts "Error: given digit outside of 0..15!!"
end

def hex_to_single_dec(char)
  DEC_TO_HEX.key(char)
  #ERROR message?
end
#-------------------
#fix me
def rand_num_from_hex_length(int)
  min_hex = find_smallest_ndigit_hex(int)
  max_hex = find_largest_ndigit_hex(int)
  min = hex_to_decimal(min_hex)
  max = hex_to_decimal(max_hex)
  rand(min..max)
end
#--------------------
def hex_to_decimal(string)
  int = 0
  sixtens = 1
  string_a = string.chars
  while string_a.size >= 1 do
    char = string_a.pop
    num = hex_to_single_dec(char)
    int += num * sixtens
    sixtens *= 16
  end
  int
end

def decimal_to_hex(int)
  string_hex= ""
  loop do
    q, r = int.divmod(16)
    string_hex = (single_dec_to_hex(r)) + string_hex
    int = q
    break if int == 0
  end
  string_hex
end

def uuid
  result = ""
  array_lengths  = [8,4,4,4,12]
  array_lengths.each_with_index do |len,i|
    ran_num = rand_num_from_hex_length(len)
    hex_num = decimal_to_hex(ran_num)
    result << hex_num
    result << "-" if i <= array_lengths.size - 2
  end
  result
end

p uuid

##8
#get random number
#convert number to hexidecimal
#add hexidecimal to string
#add "-"
#
#repeat for remaining lengths

#test section
=begin
p find_largest_ndigit_hex(8)
p find_largest_ndigit_hex(4)
p find_largest_ndigit_hex(12)
p find_smallest_ndigit_hex(8)
p find_smallest_ndigit_hex(4)
p find_smallest_ndigit_hex(12)

p single_dec_to_hex(0)
p single_dec_to_hex(8)
p single_dec_to_hex(15)
p single_dec_to_hex(20)

p hex_to_single_dec("0") == 0
p hex_to_single_dec("8") == 8
p hex_to_single_dec("f") == 15

p decimal_to_hex(0) == "0"
p decimal_to_hex(8) == "8"
p decimal_to_hex(15) == "f"

p decimal_to_hex(36) == "24"
p decimal_to_hex(256) == "100"
p decimal_to_hex(4096) == "1000"
p decimal_to_hex(64206) == "face"

p hex_to_decimal("24") == 36
p hex_to_decimal("100") == 256
p hex_to_decimal("1000") == 4096
p hex_to_decimal("face") == 64206
p hex_to_decimal("0") == 0

p rand_num_from_hex_length(8)
p rand_num_from_hex_length(4)
p rand_num_from_hex_length(12)
=end

=begin
.key(value)
Numeric#divmod
=end