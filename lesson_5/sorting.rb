=begin
sorting normally done on arrays since order matters
strings don't have sorting, but can be converted to array and then sorted
hash can be sorted, but since accessed with keys normally don't do this


Sorting
  done by comparison
  doesn't know it is a list of numbers or letters
  uses <=> spaceship operator
    if the two objects can't be compared returns nil
    sort then throws error
  string comparison done based on position in ASCII table
  
  
=end