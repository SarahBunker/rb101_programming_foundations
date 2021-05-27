=begin
in: positive integer (n)
out: diplay of a right triangle with lengths equal to n
rules:
  the hypotenus goes from the lower left hand side up to top right hand side
  
triangle(5)

    *
   **
  ***
 ****
*****
  
plot:

num_stars = 0
loop
  n -= 1
  num_stars += 1
  break if n < 0
  print (" " * n + "*" * num_stars)
end
  
  
=end

def triangle(n)
  stars = 0
  spaces = n
  loop do
    spaces -= 1
    stars += 1
    break if spaces < 0
    puts (" " * spaces + "*" * stars)
  end
end

puts ""
triangle(0)
puts ""
triangle(5)
puts ""
triangle(9)
