=begin
in: array of strings
out: array of strings with the strings, vowels deleted
rules:
  keep same capitlization
  if a value is a string with only vowels that array value should return an empty string, not be deleted
  
algorithym

loop through array
delete vowels permently from each string
end

return array
=end

def remove_vowels(array)
  array.map{|string| string.delete("aeiouAEIOU") }
end

p remove_vowels(%w(green YELLOW black white))

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']