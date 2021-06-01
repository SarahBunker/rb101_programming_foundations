=begin
in:string
out:hash
  #lowercase letters
  #uppercase letters
  #neither
rules:
  keys are symbols
  values are integers

plot:
initialize hash with keys and zero values
loop
  get char
  compare to "a..z" => add to lowercase
  compare to "A..A" => add to uppercase
  otherwise add to neither
  break when reached end of string
end
return hash
=end
LOWERCASE = "abcdefghijklmnopqrstuvwxyz"
UPPERCASE = LOWERCASE.upcase

def letter_case_count(string)
  case_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  index = 0
  char_a = string.chars
  loop do
    break if index == string.length
    char = char_a[index]
    if LOWERCASE.include?(char)
      case_hash[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
      
    index += 1
    
  end
  case_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }