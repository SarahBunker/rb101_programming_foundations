=begin
get the loan amount
convert to float
round to two decimals
4,000 =>  4000.00

ask them for apr in ___ form
get the apr
convert to ___ kind of number
convert to monthly
5% => 0.05

ask for loan duration
ask for loan duration units
if loan was given in years convert to months
=> 24 months

m = p * (j / (1 - (1 + j)**(-n)))

m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

print the monthly loan payment will be m
=end

puts "Welcome to the loan payment calculator."
puts "What kind of loan are you considering? (car or mortgage)"
loan_type = gets.chomp

puts "How much is the total loan amount? (please type answer without the $)"
loan_amount = gets.chomp.to_f.round(2)

puts "How much is the APR or annual percentage rate? (please write as a decimal)"
apr = gets.chomp.to_f
monthly_int_rate = apr/12.0

puts "Now we need the length of the loan."
puts "Is it easier to provide this length in months or years? (type month or year)"
duration_units = gets.chomp
puts "And how long is the loan in #{duration_units}s?"
duration_input = gets.chomp.to_f

(duration_units == "year")? (duration_months = duration_input * 12) : duration_months = duration_input

monthly_payment = (loan_amount * (monthly_int_rate / (1 - (1 + monthly_int_rate)**(-duration_months)))).round(2)

puts "The monthly loan payment will be $#{monthly_payment}"

total_interest = (monthly_payment*duration_months - loan_amount).round(2)

if loan_type == 'car'
  puts "Is your car new or used?"
  car_condition = gets.chomp
  if car_condition == "new"
    if monthly_payment < 563
      puts "you are paying less then the average car payment for a new car"
    else
      puts "Sorry. This wouldn't be a good deal. You are paying more then the average car payment for a new car"
    end
  else
    if monthly_payment < 397
      puts "you are paying less then the average car payment for a used car"
    else
      puts "Sorry. This wouldn't be a good deal. You are paying more then the average car payment for a used car"
    end
  end
  
  puts "Over the life of the car loan you will have payed $#{total_interest} in interest"
end

if loan_type == 'mortgage'
  avg_mortgage = 1556
  puts "The average mortgage payment in the US is $#{mortgage}."
  if monthly_payment < avg_mortgage
    puts "so you are doing pretty darn good"
  else
    puts "are you sure this is the house?"
  end
end

=begin
stuff to maybe add later

could require some imput validation
could figure out how to take of the $ if they entered load amount with it
could store loan statistics in hashes within a hash, one for car loans and one for house loans

=end