def palindrome?(item)
  item == item.reverse
end

def real_palindrome?(string_input)
  string = string_input.downcase
  alpha = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  numberic = %w(1 2 3 4 5 6 7 8 9)
  alphanumeric = []
  string.chars.each do |char|
    if numberic.include?(char) || alpha.include?(char)
      alphanumeric << char
    end
  end
  palindrome?(alphanumeric)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

=begin
~ count([string],[string2]) returns integer
  this method counts the number of times the string(s) provided occure in the caller
  when more then one string is given then it looks for when both strings occur
  ^ means this one is negated
  c1-c2 means all characters in between

~ returns a copy of the string with all the characters in the intersection of the set (see rules above) deleted

SOLUTION

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

=end