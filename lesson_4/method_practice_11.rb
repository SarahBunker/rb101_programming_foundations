require "pry"
a = ['ant', 'bat', 'caterpillar'].count do |str|
      str.length < 4
    end

puts a

#------------
puts "problem 1"

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#turn into a hash: names are keys, values are position in array

=begin
in: array
out: hash
rules 
  names are keys
  values are position in array
  
plot
1. get item from array
2. add item with position and index to hash
3. return hash

examples
array_to_hash(["fish","carne","huevos"]) == {"fish" => 0 , "carne" => 1, "huevos" => 2}
=end

def array_to_hash(array)
  hash = {}
  array.each_with_index{|item,index| hash[item] = index}
  hash
end

p array_to_hash(["fish","carne","huevos"]) #== {"fish" => 0 , "carne" => 1, "huevos" => 2}
p array_to_hash(flintstones)
p array_to_hash([])

puts "problem 2"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
#add all ages of munster family

=begin
in: hash of ages
out: integer representing total age
rules
  ?

plot
1. initialize total
2. access first age
3. add to counter
4. repeat steps 2-3 until reach the end of hash
5. return the total

ex
p get_value_total(ages) == 6174
=end

def get_value_total(hash)
  total = 0
  hash.values{|value| total += value}
  total
end

p get_value_total(ages)
p get_value_total(ages) == 6174

#------------------------------------------------------
puts "problem 3"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# remove people with age 100 or greater

=begin
in: hash
out: hash
rules
  the hash has people age 100 or greater removed
  
plot
  select key value pairs with value greater then 100
  remove those pairs
  continue until end of hash
=end

p ages.delete_if{|_,age| age >= 100 }
p ages

#--------------------------------
puts "problem 4"
# find min age

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

=begin
in: hash
out: integer

access the ages
set first one equal to min_age
compare each subsequent age to min_age
update min_age if smaller
return min_age

=end

min_age = ages.values.first
ages.values.each{|age| min_age = age if age < min_age}
p min_age

#--------------------------
p "problem 5"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#find the index of the first name that starts with "Be"

=begin
in:array - of strings
out:integer - index of name

plot
iterate using something to access the string and index
access first string
access first two letters
compare to "Be"
break if match
return index

=end

index_match = nil
flintstones.each_with_index{|name, index| index_match = index if name[0,2] == "Be"}
p index_match

(0...flintstones.size).each{|index| index_match = index if flintstones[index][0,2] == "Be"}
p index_match

index = 0
loop do
  name = flintstones[index]
  break if name[0,2] == "Be"
  index += 1
end
p index

#----------------------------
p "problem 6"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
=begin
shorten all the names to first three letters

in: array of strings with names
out: array with first three letters of each name

access each name
mutate to just first 3 letters
  access first 3 letters
  replace item in array with first three letters
return array
=end

flintstones.map!{|name| name[0,3]}
p flintstones

#---------------------------------
p "problem 7"

statement = "The Flintstones Rock"
=begin
in: string
out: hash with keys representing each letter, values represent frequency of letter
rules:
  skip spaces
  case sensitive

access first letter of string
  only continue if letter
  add to hash as key
  add one to value
access next letter
  only continue if letter
  add if new
  add one to value
repeat
break at end of string
return hash
=end

ALPHABET = "abcdefghijklmnopqrstuvwxwz"

def letter?(char)
  ALPHABET.include?(char.downcase)
end

# p letter?("a")
# p letter?("A")
# p letter?(" ")

letter_freq = {}
statement.chars.each do |char|
  if letter?(char)
    if letter_freq.has_key?(char)
      letter_freq[char] += 1
    else
      letter_freq[char] = 1
    end
  end
end

p letter_freq

#---------------------------------
p "problem 8"

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p numbers
  p number
  p numbers
  numbers.shift(1)
  p numbers
end


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
nummbers.each moves through by indexes, so...
after printing the first number and then shifting it the array is [2,3,4]
the index is now 1 so it will look at 3 next
3 is printed and 2 is removed, so now the array is [3,4]
the index is now 2, the array doesn't have that index so the loop stops

In the second problem the 3, 4 are removed before then can be printed so the array is
[1,2]
=end

#--------------------------------------
puts "problem 9, titalize"

=begin
in: string
out: string with each word capitalized like a title
rules:
  could have mixed cases like: pinAPPLe aT tHe Beach
  

plot
access each word
make the whole word lowercase
select the first letter
capitalize
return new string
=end

def titalize(string)
  words = string.downcase.split
  words.each do |word|
    word.capitalize!
  end
  words.join(" ")
end

words = "the flintstones rock"
phrase2 = "pinAPPLe aT tHe Beach"
p titalize(words)
p titalize(phrase2)
p words
p phrase2
p ""
#----------------------------------------
p 'problem 10'
=begin
in:nested hash
out:same hash with another catagory added
rules:
  a kid is in the age range 0 - 17
  an adult is in the range 18 - 64
  a senior is aged 65+.

plot:
1) access first name(key) from munster hash
2) access age
3) compare to ranges
4) get age group string
5) add "age_group" => string from up there
6) repeat 1 through 5 for each name in munster hash
7) return new munster hash
=end

def return_age_group(age)
  case age
  when 0..17
    return "kid"
  when 18..64
    return "adult"
  when (65..)
    return "senior"
  else 
    return "Error! invalid age"
  end
  
  #return "kid" if age < 18
  #return "adult" if age >= 18 && age < 65
  #return "senior" if age >= 65
  #"error! Invalid age."
end

# p return_age_group(32)
# p return_age_group(10)
# p return_age_group(100)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_,description_hash|
  age = description_hash["age"]
  description_hash["age_group"] = return_age_group(age)
end

p munsters