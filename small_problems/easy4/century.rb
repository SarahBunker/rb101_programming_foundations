=begin
input:year, integer
output:centry, string
rules
- output begins with century number and ends with st, nd, rd, or th as appropriate
- new centuries begin in years ending in 01
    20 century is 1901 to 2000
    
hash to store word endings?

determine what range the year is in
divide top value of range by 100 to get century
change to string
add word ending

4-20 th >>
  11 - 13 th [-2,-1]?


=end


def top_of_range(year)
  top_value = 1
  if year%100 == 0  #year is on the tail end of a century
    top_value = year/100
  else #year is in the middle of a century
    top_value = year/100 + 1
  end
  top_value
end

def century(year)
  cent = top_of_range(year).to_s
  end_dig = cent[-2..-1]
  
  #dealing with 11 - 13
  if end_dig == '11' || end_dig == "12" || end_dig == "13"
    return cent << "th"
  end
  
  #dealing with the rest
  case cent[-1]
  when "1"
    return cent << "st"
  when "2"
    return cent << "nd"
  when "3"
    return cent << "rd"
  else
    return cent << "th"
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


p century(1901)
p century(200)
p century(5)
p century(11201)