p ("#1")
=begin
order array of strings descending value
in: array of strings
out: sorted array of strings
rules:
  sort by numeric value
  
plot
access each element (string) of array
convert string to number
loop through array
sort array based on integer value
loop through array
return array of strings

=end

arr = ['10', '11', '9', '7', '8']

a = arr.sort do |a,b|
  b.to_i <=> a.to_i
end
p a
#can't use sort_by because I need it to be in reverse order
p "------------------"
p "#2"
=begin
order hashes
in: hash, one of the keys is published: '1967'
  year is in string format associated with key published
out: hash ordered by publication date
rules:
  sort numerically
  
access first element (hash) from array
access publication date (string) from hash
convert date to integer
use to sort
  small to big so no flipping
return sorted array of hashes
=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_books = books.sort_by do |hash|
  hash[:published]
end

p sorted_books

#forgot to convert to integers, but didn't matter because they were all 4 characters in length
p"--------------------"
p"#3"
#reference g
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

p arr1[2][1][-1]
p arr2[1][:third][0]
p arr3[2][:third][0][0]
p hsh1["b"][-1]
p hsh2[:third]

# watch out for arrays with one value
p"------------"
p"#4"
#change 3 to 4
arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

p arr1[1][-1]         = 4
p arr2[2]             = 4
p hsh1[:first][2][0]  = 4
p hsh2[["a"]][:a][-1] = 4

p arr1
p arr2
p hsh1
p hsh2

#in hsh the key is an array containing a single string object
p "-----------"
p "#5"

=begin
find total age of just male members of the family
in: hash
  nested hash
  age is in nested hash
out: integer
rules
  only the male members
  
plot
access first element(hash)
access value associated with key "age"
access value associated with key "gender"
if gender is male add age to total
return age total

select a hash that only has male
iterate through ages and add them
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_males = 0
munsters.each_value do |info|
  age = info["age"]
  gender = info["gender"]
  if gender == "male"
    age_males += age
  end
end
p age_males
p age_males == 444
p "---try 2---"
a_males = 0
munsters.select {|_,info| info["gender"] == "male"}.each do |name,info|
  a_males += info["age"]
end
p a_males
p a_males == 444
#hash within a hash
p "----------"
p "#6"
#string substitution
=begin
in: hash of hashes
out: print name age and gender of each family member
rules:

plot:
for each element access
name
age
gender
print result
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  #p "#{name} is #{info["age"]} years old and is a #{info["gender"]}"
  p "#{name} is a #{info["age"]}-year-old #{info["gender"]}."
end
p "-------------"
p "#7"

=begin
value of a didn't change because we are referencing arr[0] not a.
changing the value stored at this location just changes what that value is, it doesn't
change a to that value

value of b changed because we modified b by assigning a new value to one of its elements
=end

p "----------------"
p "#8"
=begin
use each to output vowels
in: hash
  pairs: symbol, array
out: print the vowels in the strings

plot:
don't need keys so iterate over values
access each value_array
access each string
access each char
if char is a vowel add to vowel string
return vowel string
=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWEL = %w(a e i o u)
vowel_s = ""
hsh.each_value do |array|
  array.each do |string|
    string.chars.each do |char|
      vowel_s << char if VOWEL.include?(char)
    end
  end
end
p vowel_s

=begin
String#chars
Hash#values
=end

p "----------------"
p "#9"
=begin
sort sub arrays alphabetically and numerically as appropriate
in: nested array
  sub arrays are either numbers or strings
out: sorted nested array
rules:
  sort descending order

plot:
access each sub array
sort each sub array in descending order
return nested array
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

a = arr.map do |sub_array|
  sub_array.sort{|a,b| b <=> a}
end

p a
#map
#sort
p "------------"
p "#10"
=begin
new array with each value is incremented by 1
in: hashes nested in array
out: new array
rules: hashes can have any number of key value pairs
  can't modify original

plot:
access each element(hash)
access each value
increase value by 1
return new array
=end

array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
a = array.map do |hash|
  hash_temp = {}
  hash.each do |letter,num|
    hash_temp[letter] = num + 1
  end
  hash_temp
end

p array
p a 
#each_with_object

p "-----------"
p "#11"

=begin
select integer values that are multiples of 3
in: nested array
out: nested array with only values that are multiple of 3
rules:
keep structure

%3 == 0

plot
access each element
access each subelement
check if subelement is divisible by 3
if it is add to copy nested array
return nested array
=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
a = arr.map do |sub_a|
  sub_a.select {|int| int % 3 == 0}
end

p a
p arr
# select or reject

p "-------"
p "#12"
=begin
change nested array to hash
in: nested array
out: hash
rules:
  can't use to_h
  key first item in sub array
  value is second item
  
plot:
access sub array
set array[0] to key
set array[1] to value
add to blank hash
return hash
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}
arr.each do |element|
  hsh[element[0]] = element[1]
end

p hsh
p hsh == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
p "----------------"
p "#13"
=begin
order sub arrays only considering odd numbers
in:nested array
out:sorted nested array
rules:ignore even numbers while sorting
  returns new array
  contains same sub arrays
  don't delete even numbers
plot:

=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
a = arr.sort_by {|arr| arr.select {|int| int.odd? }}

p a
p arr
p a == [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
#sort_by

p "----------------"
p "#14"
=begin
return nested array from hash, capitializing and using uppercase for specific values
in: hash array
out: nested array of strings
rules:
  sizes are uppercase
  colors are capitalized
  keep colors in subarray
  
plot:
access each value
access the colors value
iterate through the colors array
capitalize
add array to new array
access the size string
uppercase the string
add string to new array
return new array
=end
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
a =  hsh.map do |_,value|
  if value[:type] == "fruit"
    value[:colors].map {|color| color.capitalize}
  elsif value[:type] == "vegetable"
    value[:size].upcase
  end
end

p a
#p array_color_size
#p array_color_size == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

#when getting something from map or select always assign it to a variable before
#printing it or use parenthesis

p "-----------------"
p "# 15"

=begin
from a nested array with subhashes return only hashes with all even integers
in: array, sub elements are hashes with multiple key/value pairs
out: array with less sub elements

plot:
selection
access each element of array (hash)
access the values of each key (array)
access the elements of each array (integer)
determine if all elements are even
return hashes where all elements of every arrays are even

=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

array_storage = []

a = arr.map do |hsh|
  hsh.select do |_,value|
    value.all? {|int| int.even?}
  end
end

a.each do |hsh|
  if hsh != {}
    array_storage << hsh
  end
end

p array_storage