=begin
in: starting number (int), ending number (int)
out: print all numbers between two numbers
rules:
  number/by 3 replace with "Fizz"
  number/by 5 replace with "Buzz"
  /3 and /5 replace with "FizzBuzz"
  
plot:
using start and end number
for each number check if /3
  check if /5
    print "FizzBuzz"
  
  if only /3
    print "Fizz"
if not divisable by 3
  check if /5
    print "Buzz"
if not /3 AND /5
  print number
=end

def fizzbuzz(num_start, num_end)
  result = []
  (num_start..num_end).each do |num|
    result << fizz_value(num)
  end
  puts result.join(', ')
end

def fizz_value(num)
  div_3 = num % 3 == 0
  div_5 = num % 5 == 0
  if div_3 && div_5
    "FizzBuzz"
  elsif  div_3
    "Fizz"
  elsif div_5
    "Buzz"
  else
    num
  end
end
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz