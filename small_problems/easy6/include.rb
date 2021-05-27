=begin
in: array, search value
out: t/f 
rules:
  return true if search value is included in array
  false otherwise
  can't use .include?

plot:
function
  iterate through array
  check if value matches search value
  if equal change boolean to true
  
  return boolean
end

=end

#START HERE
#use .find_index and !! to rewrite this solution during review
#also try using a return statement inside of the .each loop to reduce code

def include?(array,search_value)
  included = false
  array.each do |x|
    included = true if x == search_value
    break if x == search_value
  end
  
  included
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
