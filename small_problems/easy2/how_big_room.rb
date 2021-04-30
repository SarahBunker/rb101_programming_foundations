=begin
get length (m)
get width (m)

calculate area in (m)

def change l, w to ft

calculate area in (f)

return result
=end

def m2_to_f2(measurement)
  measurement * 10.7639
end

def return_area(length, width)
  length * width
end

def prompt(message)
  puts "=> #{message}"
end

prompt "What is the length of the room in meters:"
length_m = gets.chomp.to_f

prompt "What is the width of the room in meters"
width_m = gets.chomp.to_f

area_m2 = return_area(length_m, width_m)

area_ft2 = m2_to_f2(area_m2)

prompt("The area of the room is #{area_m2} square meters
  (#{area_ft2} square feet)")
