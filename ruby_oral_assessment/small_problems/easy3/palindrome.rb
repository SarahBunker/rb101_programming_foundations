=begin
#------------------------------------------------------------------------------
PROBLEM:
write a method that returns boolean if string is palindrome

input: string
output: boolean
rules:
    Explicit requirements:
    palindromes read the same forward as backwards
    case matters
    all characters matter
      
    Implicit requirements:
    input is a string with any characters
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

ma
ma
01
len = 5
madam
01|2|34
54|3|21

356
653.reverse is 356
012
len = 6
356653
012|345
654|321
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1. define method
2. determine arrays for the first half and the last half
3. ignore middle character
4. reverse last half of the array
5. compare to first half
6. if they are equal then return true
7. otherwise return false
8.
9.
10.



=end

=begin
def palindrome?(str)
  str = str.chars
  len = str.length
  middle = len/2
  str.delete_at(middle) if len.odd?
  first_half = str[0..(middle - 1)]
  last_half = str[middle..-1]
  first_half == last_half.reverse
end
=end
#def palindrome?(str)
#  arr = str.chars
#  arr.each do |head|
#    arr.reverse_each do |tail|
#      p "Head is #{head}."
#      p "Tail is #{tail}."
#      return false if (tail != head)
#    end
#  end
#  true
#end
def palindrome?(str)
  arr = str.chars
  arr == arr.reverse
end

p palindrome?('madam')          == true
p palindrome?('Madam')          == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653')         == true
p palindrome?("")               == true

def real_palindrome?(str)
  alpha = ("a".."z").to_a
  only_alpha = str.downcase.chars.select {|char| alpha.include? (char) }
  only_alpha == only_alpha.reverse
end

p real_palindrome?("madam i'm adam")

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

def palindromic_number?(int)
  p int.to_i
  item = int.digits.map(&:to_s).join
  p item
  palindrome?(item.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

def palindrome_arr_str?(item)
  item == item.reverse
end

p palindrome_arr_str?([1,2,3,2,1]) == true
p palindrome_arr_str?("12321")     == true

p "here"
p palindromic_number?(001232100)