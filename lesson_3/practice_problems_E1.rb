=begin
what is != and where should you use it?
  not equal, comparision, logic gates
put ! before something, like !user_name
  inverts boolean, put in front of something that is truthy
    it will return false
put ! after something, like words.uniq!
  generally means the method is destructive, mutates the caller
put ? before something
  there is the ? in the ternary operator
put ? after something
  if it is after a method that means the method likely returns a boolean
put !! before something, like !!user_name
  returns the boolean of the something
  for truthy things it returns true,
  for nil and false it returns false
  
!!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
!<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.

! and ? at the end of the method name is part of the name and not ruby syntax
but, generally used for those kinds of methods
=end

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important","urgent")
puts advice

=begin
.gsub(pattern, replacement) ~ replace all values in string with choosen phrase

------------------
Q 4
.delete(value)    ~deletes value from array
.delete_at(index) ~deletes value at certain index
  returns deleted value
  mutating methods
=end

puts (10...100).include?(42)

=begin
could have also used
.cover ~returns true if number is between range
=end

famous_words = "seven years ago..."
puts "Four score and "+ famous_words
puts "Four score and #{famous_words}"
puts "Four score and " << famous_words

# Q 8 
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p ["Barney", flintstones["Barney"]]

p flintstones.assoc("Barney")

=begin
I guess this was one of those go and find a method that does this
hash.assoc(obj) ~ searches hash for key that matches object, returns array with key and value
  in array
=end