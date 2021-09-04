=begin
#------------------------------------------------------------------------------
PROBLEM:
return a string
every other character is capitalized, starting with the first letter
input: string
output: string with staggard capitals, new string
rules:
    Explicit requirements:
      non alpha characters don't change case, but they count for switching
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- capitalize all string values
- lowercase all odd index values
-   split into characters
-   iterate
-   downcase when index is odd
    return char
- join into string, return
- 

=end

def staggered_case(string)
  index = 0
  new_array = string.upcase.chars.map do |char|
    index += 1
    if index.even?
      char.downcase
    else
      char
    end
  end
  
  new_array.join
end

p staggered_case('I Love Launch School!')     == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')                  == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case(string,start_upcase=true)
  index = 0
  new_array = string.upcase.chars.map do |char|
    index += 1
    if index.even? && start_upcase
      char.downcase
    elsif index.odd? && !start_upcase
      char.downcase
    else
      char
    end
    
    
  end
  
  new_array.join
end

p staggered_case('I Love Launch School!',false)     #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS',false)                  #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers',false) #== 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!')     == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')                  == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'