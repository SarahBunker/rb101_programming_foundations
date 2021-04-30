ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")
p ages.has_key?("Spot")
p ages.key?("Spot")
p ages.member?("Spot")

munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

=begin
.swapcase ~ switches cases, upcase to downcase and viceversa
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
p ages.merge(additional_ages)

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("dino")

p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino" << "Hoppy"
p flintstones

=begin
.concat() adds elements to end of array
.concat("Dino","Hoppy")
.push() adds elements to end of array

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
=end

advice = "Few things in life are as important as house training your pet dinosaur."
phrase = "Few things in life are as important as "
p advice.slice!(phrase)
p advice

=begin
advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
p advice # => "house training your pet dinosaur."

string.index(substring) ~ returns index substring starts at
=end

statement = "The Flintstones Rock!"
p statement.count("t")

=begin
really screwy documentation but 
.count(substring) ~ returns the number of times that substring is found in string
=end

title = "Flintstone Family Members"
num_spaces_one_side = (40 - title.length) / 2
num_spaces_one_side.times{title.concat(' ').prepend(' ')}
p title

=begin
yup, there is a method to do that called center
.center(width,padstr=" ") ~ width provides character length
  padstr provides the thing to fill the extra space with
  
title.center(40)
=end