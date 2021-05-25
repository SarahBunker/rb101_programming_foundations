=begin
in: string
out: string with non-alpha chars replaced with spaces
rules:
  result shouldn't have consequetive spaces


algorithym
split into chars
iterate and compare to alphabet
  return letter for alpha
  return space for other
split on space(s)
join with space

=end
ALPHA_CAPS = %(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
ALPHA_LOWER = %(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def only_alphas(char)
  return char if ALPHA_CAPS.include?(char) || ALPHA_LOWER.include?(char)
  " "
end

def cleanup(string)
  p string.chars.map{|char| only_alphas(char)}.join.split.join(" ")
end

p only_alphas("a")
p only_alphas(" ")
p cleanup("---what's my +*& line?") == ' what s my line '