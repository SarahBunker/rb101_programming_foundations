def string_lengths1(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

#-------------------------------
def string_lengths2(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

def string_lengths3(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end

def string_lengths4(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

string = "To be or not to be"

p string_lengths1(string)
p string_lengths2(string)
p string_lengths3(string)
p string_lengths4(string)

=begin
.map
.each

the second one returns the words because each returns the array it was called on and that was the last action
  .map is the last thing called on the first one, but it returns the result of the block
  fix by returning lengths
The last one stops early
  fix by changeing == to >

=end