def fibonacci(n)
  return 1 if n <= 2
  i = 3
  arr = [1,1]
  loop do
    break if i > n
    a_n = arr.sum
    arr.push(a_n).shift
    i += 1
  end
  arr[-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
answer =  fibonacci(100_001) # => 4202692702.....8285979669707537501
p answer.to_s.start_with?("4202692702")
p answer.to_s.end_with?("8285979669707537501")