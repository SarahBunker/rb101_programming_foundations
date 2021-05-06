def multiply(num1,num2)
  num1*num2
end

def square(num1)
  multiply(num1,num1)
end

puts square(5) == 25
puts square(-8) == 64

def power(n,degree)
  total = 1
  loop do
    total = multiply(total,n)
    degree -= 1
    break if degree <= 0
  end
  total
end

puts power(3,1)
puts power(3,2)
puts power(3,3)