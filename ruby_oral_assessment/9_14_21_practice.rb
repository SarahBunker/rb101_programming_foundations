=begin
prime
- doesn't include 1
- divisable by a number not including one and itself

iterate through the the number 2 through one minus the number
divide the number, by the divisor
if even return true

outside of loop return false

=end

def prime?(int)
  return false if int == 1
  return true if int == 2
  (2..int/2).each{|divisor| return false if int%divisor == 0}
  true
end

p prime?(3)  == true
p prime?(7)  == true
p prime?(4)  == false

p prime?(1)  == false
p prime?(2)  == true

def find_primes(num1, num2)
  return_array = []
  (num1..num2).each{|num| return_array << num if prime?(num)}
  return_array
end

p find_primes(3, 10)    == [3, 5, 7]
p find_primes(11, 20)   == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100)   == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2)     == [2]