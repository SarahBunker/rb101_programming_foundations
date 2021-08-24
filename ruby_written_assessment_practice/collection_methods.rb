months_h = {1 => "January", 2 => "February", 3 => "March", 4 => "April"}

months_a = months_h.values

months_s = "January"

#############################################
#Each
#iteration
#returns original colling object
#the length of returned object is the same length as orginal 


a = months_h.each {|num, name| puts "the #{num} month is #{name}"}
p a.object_id
p months_h.object_id

months_a.each { |element| puts element.class } 

months_s.each_char {|a| p a}


#Each is not defined for a string class, but each_char is.
#The each method for the Array class iterates over a collection, and always returns the calling object. If no block is passed to it, it returns a new Enumerator.

###############################################
#Map
#Transformation
#returns new collection
#same or less length

#Map returns a new array based on the blocks return value. Can contain the same number of items. 
#Calls the block with each element of self and returns an Enumerator if no block is given.

new_months_arr = months_a.map { |month| month.upcase } 
p new_months_arr

months_letters = months_h.map {|num, name| [num,name[0..2]]}.to_h
p months_letters

#jan = months_s.map {|a| a[3]}
#p jan

#no map method for strings
#returns array when called on hash
#can return nested array and convert to hash using .to_h

################################################
#Select
#selection
#considers truthy of return value
#return object is the same or less length as original
#returns new object
#elements passed to block that return a truthy value are selected. Selected items are placed in a new collection. The new collection is returned by the method.

p months_h.select {|num, name| num > 2}

p months_a.select {|name| name.include? ("a")}

#p months_s.select {|a| a < "m"}

#select returns a hash when called on a hash
#No select methods for strings