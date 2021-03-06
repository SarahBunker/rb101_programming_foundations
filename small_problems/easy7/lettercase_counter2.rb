LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a
def letter_case_count(string)
  case_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  case_hash[:lowercase] = string.chars.count {|char| LOWERCASE.include?(char)}
  case_hash[:uppercase] = string.chars.count {|char| UPPERCASE.include?(char)}
  case_hash[:neither] = string.length - case_hash[:lowercase] - case_hash[:uppercase]
  case_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }