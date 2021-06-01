=begin
in: string
out: new string
rules:
  new string has ever letter swapped cases
  other characters are not affected
  can't use .swapcase

plot:
create constant arrays of uppercase and lowercase letters
access each character
determine if character is part of uppercase array
  use index to switch to lowercase letter
determine if character is part of lowercase array
  use index to switch to uppercase letter
repeat for each letter
=end
LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a

def swapcase(string)
  array = string.chars.map{|char|
    if LOWERCASE.include?(char)
      i = LOWERCASE.index(char)
      char = UPPERCASE[i]
    elsif UPPERCASE.include?(char)
      i = UPPERCASE.index(char)
      char = LOWERCASE[i]
    else
      char
    end
  }
  array.join
end

p swapcase('CamelCase')         == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=begin
breadcrumbs
I could have used upcase and downcase instead of the arrays

char =~ /[a-z]/
char =~ /[A-Z]/

=end