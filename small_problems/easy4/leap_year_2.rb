def leap_year_v1?(year)
  if year%100 == 0
    return year%400 == 0
  end
  year%4 == 0
end

def leap_year?(year)
  if year <= 1752
    return year%4 == 0
  else
    return leap_year_v1?(year)
  end
  
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

=begin
user submitted solution

def gregorian(year)
  (year % 400).zero? || (year % 4).zero? && !(year % 100).zero?
end

def julian(year)
  (year % 4).zero?
end

def leap_year?(year)
  year < 1752 ? julian(year) : gregorian(year)
end

=end