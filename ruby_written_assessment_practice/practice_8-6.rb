=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Integer
Output: 1 Integer
  
---------------------------RULES-----------------------------------------
Explicit:
  -Take in positive integer as argument
  -return num of times the digits in given num must be multiplied together until a single num is returned
Implicit:

--------------------------EXAMPLES---------------------------------------
39
3 * 9 --> 27 (1)
2 * 7 --> 14 (2)
1 * 4 --> 4 (3)

==> 3

----------------------------ALGO-----------------------------------------

split num into digits
times together
break if < 10

=end
p 39.digits.reduce(:*)

def persistence(num)
  count = 0
  while num > 9
    num = num.digits.reduce(:*)
    count += 1
  end
  count
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(999) == 4
p persistence(14) == 1