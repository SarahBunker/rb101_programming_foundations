=begin
random number between 20 and 200
print
=end
=begin
prng = Random.new
age = prng.rand(20..200)

puts "Teddy is #{age} years old!"
=end
def print_age(name = "Teddy")
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

print_age
print_age("David")