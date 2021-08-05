def find_1000_100_10_1s(num)
  place = 1000
  digits = []
  4.times do
    int, remainder = num.divmod(place)
    place /= 10
    digits << int
    num = remainder
  end
  return digits
end

p find_1000_100_10_1s(1234)
p find_1000_100_10_1s(8745)
p find_1000_100_10_1s(0)
p find_1000_100_10_1s(4008)
p find_1000_100_10_1s(1)

p ""

movies = {"Batman" => 1975, "RobinHood" => 2004, "Free man" => 2013}
movies.each {|name,year| puts "The movie #{name} came out in #{year}."}

years = movies.values
p years

p ""

def factorial(num)
  puts "Error, factorial is not defined for negative numbers." if num < 0
  result = 1
  while num > 0 do
    result *= num
    num -= 1
  end
  return result
end

p factorial(4) == 24
p factorial(7) == 5040
p factorial(1) == 1
p factorial(0) == 1
p factorial(-1) == 1

def prompt(string)
  puts "=> #{string}"
end

def show_name()
  prompt( "What is your name?")
  name = gets.chomp
  10.times {prompt ("Hello Mr./Mrs. #{name}")}
end

def show_age()
  prompt("How old are you?")
  age = gets.chomp.to_i
  num_years = 10
  4.times do
    prompt("In #{num_years} years you will be #{age + num_years}")
    num_years += 10
  end
end

#show_name()
#show_age()

def greeting(name)
  "Hello #{name}."
end

puts greeting("Sarah")

def multiply(num1, num2)
  num1 * num2
end

puts multiply(4,5)

def scream(words)
  puts (words = words + "!!!!")
end

scream("Yippeee")

def cap_10(string)
  if string.size >= 10
    return string.upcase
  else
    return string
  end
end

puts cap_10("hello world")
puts cap_10("")
puts cap_10("l;ksjdfl;anmm,e")
