def reverse_words(string)
  array = string.split.map do |word|
            if word.length > 4
              word.chars.reverse.join
            else
              word
            end
          end
  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin

Solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

created empty array to store stuff
used each, non destructive to add reversed words into word array, mutating

=end