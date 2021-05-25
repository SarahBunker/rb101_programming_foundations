def multisum(limit)
  new_a = []
  num = 0
  loop do
    num += 3
    break if num > limit
    new_a << num
  end
  num = 0
  loop do
    num += 5
    break if num > limit
    new_a << num
  end
  
  total = 0
  new_a.each{|x| total += x}
  
  total
end



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

p multisum(1000)

=begin
error in addition somewhere
=end