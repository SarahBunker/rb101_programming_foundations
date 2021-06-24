=begin
in:integer (n length of diamond)
out: print nxn grid of stars in diamond shape
rules:
  you can assume the arg will always be an odd integer
  
plot:
print a single star centered in the len from int
print another string with two more stars centered
..
until len of string with stars equal integer
then remove two stars
print star string centered
remove two more stars
print star string centered
..
until last star string printed has length 1
=end

def diamond(int)
  return nil if int.even?
  star_string = "*"
  loop do
    puts star_string.center(int)
    break if star_string.length >= int
    #p "here, and star_string is: #{star_string}"
    star_string += "**"
  end
  loop do
    break if star_string.length <= 1
    star_string.chop!.chop!
    puts star_string.center(int)
  end
end

diamond(1)
p ""
diamond(3)
p ""
diamond(5)
p ""
diamond(11)

=begin
further exploration
modify solution so that it only print the outline of the diamond
diamond(5)

  *
 * *
*   *
 * *
  *
=end