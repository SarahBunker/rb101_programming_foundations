#print "What is the bill? "
#bill = gets.to_f
#print "What is the tip percentage? "
#tip_percent = gets.to_f
#puts
#
#tip_total = bill * tip_percent / 100
#total = tip_total + bill
#
#
#puts "The tip is $#{sprintf("%.2f",tip_total)}"
#puts "The total is $#{sprintf("%.2f",total)}"

#YEAR = 2021
#puts "What is your age?"
#age = gets.chomp.to_i
#puts "At what age would you like to retire?"
#age_retire = gets.chomp.to_i
#
#year_2_retire = age_retire - age
#year_retire = YEAR + year_2_retire
#
#puts "It's #{YEAR}. You will retire in #{year_retire}."
#puts "You have only #{year_2_retire} year)s) of work to go!"

#puts "What is your name?"
#
#name = gets.chomp
#
#
#response1 = "Hello #{name}."
#response2 = "Hello #{name.chop}. Why are we screaming?"
#response2.upcase!
#
#if name.include?("!")
#  puts response2
#else
#  puts response1
#end

#1.upto(9){|i| puts i if i.even?}

#puts ">> Please enter an integer greater than 0:"
#int = gets.chomp.to_i
#puts ">> Enter 's' to compute the sum, 'p' to compute the product."
#input = gets.chomp.to_s.downcase
#
#if input == "s"
#  sum = (1..int).to_a.reduce(:+)
#  puts "The sum of the integers between 1 and #{int} is #{sum}."
#elsif input == "p"
#  product = (1..int).to_a.reduce(:*)
#  puts "The product of the integers between 1 and #{int} is #{product}."
#else
#  puts "Error, unknown input"
#end


