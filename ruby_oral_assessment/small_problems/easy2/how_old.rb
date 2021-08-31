=begin
#------------------------------------------------------------------------------
PROBLEM:
Generate random age and print out Teddys age
input: 
output: string with Teddy's age
rules:
    Explicit requirements:
      age must be random number between 20 and 200
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.def method
2.get age, random number
3.print result



=end

def random
  age = Random.new.rand(20..200)
  p "Teddy is #{age} years old!"
end

random