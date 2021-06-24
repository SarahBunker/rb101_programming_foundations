def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, (first + last)%10]
  end

  last
end

#p fibonacci_last(1)
#p fibonacci_last(2)
#p fibonacci_last(3)
#p fibonacci_last(4)
#p fibonacci_last(5)
#p fibonacci_last(6)
#p fibonacci_last(7)
#p fibonacci_last(8)
#p fibonacci_last(9)
#p fibonacci_last(10)


p ""

#p fibonacci_last(15)        == 0 # -> 0  (the 15th Fibonacci number is 610)
#p fibonacci_last(20)        == 5# -> 5 (the 20th Fibonacci number is 6765)
#p fibonacci_last(100)       == 5# -> 5 (the 100th Fibonacci number is 354224848179261915075)
#p fibonacci_last(100_001)   == 1# -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) == 3# -> 3 (this is a 208989 digit number)
#p fibonacci_last(123456789) == 4# -> 4

(1..30).to_a.each do |i|
  p fibonacci_last(i)
end

def fibonacci_last_quicker(n)
  n %= 60
  fibonacci_last(n)
end

p "the big one!"
p fibonacci_last_quicker(123_456_789_987_745)

#the key to solving it quicker was using the fact (found online) that the sequence
#repeats every 60 numbers. This is because n = 61 ends in 1 and n = 62 ends in 1 thus starting the
# sequence over