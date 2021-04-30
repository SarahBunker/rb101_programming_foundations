=begin
for i in range
if odd print to screen
=end

=begin
for i in (1..100)
  puts i if i.odd?
end

one_hundred = Array(1..100)
puts one_hundred.select{|num| num % 2 == 1}

=end

for i in (1..100)
  puts i if i.even?
end