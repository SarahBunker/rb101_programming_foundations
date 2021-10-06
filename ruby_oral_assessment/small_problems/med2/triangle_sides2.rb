def triangle(x,y,z)
  arr = [x,y,z].sort!
    return :invalid if x < 1 || y < 1 || z < 1  #proving this line of code had an error
    return :invalid if ((arr[0] + arr[1]) < arr[2])
    return :equilateral if arr[0] == arr[1] && arr[1] == arr[2]
    return :scalene if  arr[0] != arr[1] && arr[0] != arr[2] && arr[1] != arr[2]
    return :isosceles 
end

p triangle(3, 3, 1.5) == :isosceles
p triangle(1, 1, 0.5) == :isosceles