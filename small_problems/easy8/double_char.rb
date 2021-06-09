=begin
in: string
out: new string
rules:
  each character is doubled in new string
  empty array returns empty array
  
plot:
  initialize return array
  for each letter add two of that letter to return array
  return new array
=end

def repeater(string)
  result_a = ""
  string.chars.each do |char|
    result_a << char << char
  end
  result_a
end

p repeater('Hello')     == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('')          == ''