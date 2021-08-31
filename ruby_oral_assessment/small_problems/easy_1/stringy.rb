=begin
#------------------------------------------------------------------------------
PROBLEM:

input: positive integer
output: string of alternating 1s and 0s with length of integer
rules:
    Explicit requirements:
      always starts with 1
      length of string matches integer
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
#------------------------------------------------------------------------------
DATA STRUCTURE
integer
string

#------------------------------------------------------------------------------
ALGORITHM
example: puts stringy(4) == '1010'

1.def method
  a. initialize empty string ''
  b. iterate through integer 
    i. add 1 or 0 based on index of iteration '1010'
  d. return new string
2.
3.



=end
def stringy(int)
  new_string = ""
  int.times do |index|
    new_string << (index.even? ? 1 : 0).to_s
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy2(int, starting_num)
  new_string = ""
  if starting_num == 1
    int.times do |index|
      (new_string << (index.even? ? 1 : 0).to_s)
    end
  elsif starting_num == 0
    int.times do |index|
      (new_string << (index.even? ? 0 : 1).to_s)
    end
  else
    puts "error, unknown starting number"
  end
  new_string
end
puts
p stringy2(6, 0) == "010101"
p stringy2(9, 0) == "010101010"
p stringy2(4, 1) == "1010"
p stringy2(7, 1) == "1010101"