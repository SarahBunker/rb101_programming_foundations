=begin
get age
get retirement age
calculate difference
add to current year

print result
=end

current_year = Time.now.year

puts "What is your age?"
age = gets.chomp.to_i

puts "What age do you want to retire?"
age_retirement = gets.chomp.to_i

years_left = age_retirement - age

year_retirement = current_year + years_left

puts "It's #{current_year}. You will retire in #{year_retirement}"
puts "You only have #{years_left} years of work to go!"

=begin
Time.now returns the current date
.year returns the current year

=end