=begin
# INTERVIEW ASSESSMENT
- Zoom & Coderpad
- One hour. Two problems.
- Focus: Structured problem-solving approach, Ruby fluency, Communication ability (walk through thought process, make TA on the same page, if you need to go silent > let them know)
- No documentation, no outside notes, use repl
- Test code frequently
- Preparation: RB101-RB109 Small Problems, Pair up with other students


# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20












=end

=begin
#------------------------------------------------------------------------------
PROBLEM:
detemine the number of odd integers less then or equal given number that are not prime
input: integer
output: integer representing the number of odds not prims less then or equal number
mutating? NA
rules:
    Explicit requirements:
      prime: natural number greater then one with no positive divisors other then 1 and itself
      one is not a prime number
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
p odd_not_prime(5)  == 1  # 1,3,5              > 1
p odd_not_prime(10) == 2  # 1,3,5,7,9          > 1,9
p odd_not_prime(15) == 3  # 1,3,5,7,9,11,13,15 > 1,9,15
p odd_not_prime(48) == 10 
p odd_not_prime(82) == 20

counter = 0
iterating over odd integers from 1 to given number
  find positive divisors
    iterate over the numbers 2 to one less then given number
    if odd_integer % divisor is 0 then increase counter and break loop
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:  p odd_not_prime(5)

def method(integer_input)
  initialize counter to zero
  iterate over odd integers from 1 to integer input (odd_integer) [1,3,5]
    if odd_integer == 1 then add one to counter
    iterate over numbers from 2 to one less then odd_integer (divisor) 3 => [2] , 3 != 0, 
      if odd_integer % divisor is 0
        increment counter
        break loop
      end
    end
  end

=end

def odd_not_prime(integer_input)
  counter = 0
  odd_integer = 1
  while odd_integer <= integer_input
    if odd_integer == 1
      counter +=1
      odd_integer += 2
      next
    end
    2.upto(odd_integer-1)do |divisor|
      if odd_integer % divisor == 0
        counter += 1
        break
      end
    end
    odd_integer += 2
  end
  counter
end

p odd_not_prime(10)
p odd_not_prime(5)  == 1  # 1,3,5              > 
p odd_not_prime(10) == 2  # 1,3,5,7,9          > 1,9
p odd_not_prime(15) == 3  # 1,3,5,7,9,11,13,15 > 1,9,15
p odd_not_prime(48) == 10 
p odd_not_prime(82) == 20
