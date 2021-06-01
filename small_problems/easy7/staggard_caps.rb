def staggered_case(string)
  characters = ""
  string.downcase!.chars.each_with_index do |char,index|
    characters << char if !(char =~ /[a-z]/ || char =~ /[A-Z]/)
    if index.even?
      characters << char.upcase
    else
      characters << char
    end
  end
  characters
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
error, come back to later
=end