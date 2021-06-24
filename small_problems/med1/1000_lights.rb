=begin
input:
output:
rules

plot
create a toggle function
changes array value at given index to zero or one

initialize array with zeros
iterate through n times
first itereation toggle every light
second iteration toggle every other light
..
last iteration toggle only last light

determine position of on lights
store position, not index in array
return array
=end
#------------------------------------------------------------

# zeros = [0,0,0,0,0]
=begin
p toggle(zeros,1)
p zeros

i = 0
n = 1
loop do
  break if i >= zeros.size
  position = i + 1
  if position % n == 0
    toggle(zeros,i)
  end
  i += 1
end

i = 0
n = 2
loop do
  break if i >= zeros.size
  position = i + 1
  if position % n == 0
    toggle(zeros,i)
  end
  i += 1
end

i = 0
n = 3
loop do
  break if i >= zeros.size
  position = i + 1
  if position % n == 0
    toggle(zeros,i)
  end
  i += 1
end

p zeros

p "---------------"

zeros = [0,0,0,0,0]

int = 5
1.upto(int) do |n|
  i = 0
  loop do
    break if i >= zeros.size
    position = i + 1
    if position % n == 0
      toggle(zeros,i)
    end
    i += 1
  end
end

p zeros

p "----------------"

zeros = [0,0,0,0,0]

len = 5
1.upto(len) do |n|
  i = 0
  while i < len
    position = i + 1
    if position % n == 0
      toggle(zeros,i)
    end
    i += 1
  end
end

p zeros

zeros.each_with_index do |light,i|
  zeros[i] = i+1 if light == 1
end

zeros.delete(0)
p zeros

p "---------------"

len = 5

zeros = Array.new(len,0)

1.upto(len) do |n|
  i = 0
  while i < len
    position = i + 1
    if position % n == 0
      toggle(zeros,i)
    end
    i += 1
  end
end

p zeros

zeros.each_with_index do |light,i|
  zeros[i] = i+1 if light == 1
end

zeros.delete(0)
p zeros

=end

=begin
I think Array.new(len,0)   works because 0 is an integer and therefor immutable
=end

#---------------------------------------------------------------------

def toggle(arr, index)
  arr[index] == 0 ? arr[index] = 1 : arr[index] = 0
end

def toggle_itteration(len)
  zeros = Array.new(len, 0)
  1.upto(len) do |n| # itterate through toggles
    i = 0
    while i < len
      position = i + 1
      if position % n == 0
        toggle(zeros, i)
      end
      i += 1
    end
  end
  zeros
end

def lights(len)
  zeros = toggle_itteration(len)
  zeros.each_with_index do |light, i| # convert ones to position
    zeros[i] = i + 1 if light == 1
  end
  zeros.delete(0)
  zeros
end

p lights(5)   == [1, 4]
p lights(10)  == [1, 4, 9]
thousand = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256,
  289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
p lights(1000) == thousand

=begin
underscores at the front of variable names means they aren't used

Further exploration:
every on light is a perfect square. Why?

#from internet
The n-th light bulb is toggled once for every factor of n. Squares are the only numbers
with an odd number of factors, which can be seen because every factor J of a number,
has a co-factor K for which JK=n. This pairs up all the factors of n, unless J=K,
which only occurs when n is a square.

their solution uses a hash
The key stores the position, the value stores the on off postion
in the end they accessed the position by selecting the key/values that had value "off"
then returned the keys
=end

p lights(8)