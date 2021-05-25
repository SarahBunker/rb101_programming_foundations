=begin
in: string
out: sum of all ascii values of the charaters in string
rules:
  empty string returns 0
  use .ord to get ascii value of a character

split string into array of characters
total = 0
loop
  convert char into ascii
  add ascii to total
end
return total

=end

def ascii_value(string)
  total = 0
  string.chars.each do |char|
    total += char.ord
  end
  
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

=begin
it had been long enough since I coded that I forgot the format of a do...end vs {} and tried to 
combine the two

SOLUTION
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

.each_char passes each character in string to given block

=end