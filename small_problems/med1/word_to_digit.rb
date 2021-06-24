=begin
in: string with digits mixed in
out: convert those digits (one, two) to digits (1, 2..)
  still returning a string
rules:

plot:
convert string to array
itterate through array
  compare each word to hash, convert to value as applicable
rejoin with spaces
=end

NUM_HSH = {"one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5",
  "six" => "6", "seven" => "7", "eight" => "8", "nine" => "nine"}

def word_to_digit(string)
  NUM_HSH.each do |word,num|
    string.gsub!(word,num)
  end
  #arr = string.split
  #arr.each_with_index do |word,i|
  #  arr[i] = NUM_HSH[word] if NUM_HSH.key?(word)
  #end
  #arr.join(" ")
  string
end

string1 = 'Please call me at five five five one two three four. Thanks.'
p word_to_digit(string1) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'