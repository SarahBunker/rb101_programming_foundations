=begin
in: 3 integers between 0 and 100
out: string representing average of the values
rules:
  don't need to input check

plot:
add all 3 numbers
devide by 3
compare to range for grades
return string
=end

=begin
def get_grade(num1, num2, num3)
  avg = (num1 + num2 + num3)/3
  if avg >= 90
    "A"
  elsif avg >= 80
    "B"
  elsif avg >= 70
    "C"
  elsif avg >= 60
    "D"
  else
    "F"
  end
end
=end
def get_grade(n1, n2, n3)
  avg = (n1 + n2 + n3) / 3
  case avg
  #when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  when 0 ..59 then "F"
  else             "A" 
  end
end
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(95, 90, 133) == "A"