=begin
Try modifying your solution so it prints the triangle upside down from its current orientation.
Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.
=end

=begin #### corner upper right 
def triangle(num)
  spaces = 0
  stars = num                              #changed initial values

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1                             #switched incrementation
  end
end
=end

#-----------original-----------
=begin #### corner lower right
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
=end
#--------------------------

=begin #### corner lower left
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)    #switched places when printed
    spaces -= 1
    stars += 1
  end
end
=end


=begin
in: n, up/down, left/right
out: triangle

plot

=end

def triangle(num,up_b,left_b)
  spaces = 0
  stars = num
  if !up_b
    spaces = num - 1
    stars = 1
  end

  num.times do |n|
    if left_b
      puts ('*' * stars)  + (' ' * spaces)
      spaces += 1
      stars -= 1 
    else
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
  end
end


triangle(4,true,true)

triangle(4,true,false)

triangle(4,false,true)

triangle(4,false,false)
