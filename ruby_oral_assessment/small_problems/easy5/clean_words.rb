=begin
#------------------------------------------------------------------------------
PROBLEM:
replace non alpha characters with a space
input: string with other characters
output: string without other characters
rules:
    Explicit requirements:
      if more then one alpha characters appear in a row replace with a single space
      no consecutive spaces
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
cleanup("---what's my +*& line?") == ' what s my line '
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

define method
1.create array of only alpha characters
2.separate characters into array
3.itterate through characters
4.return a space if character is not part of alpha array
5.return character otherwise

get rid of extra spaces
6.split (default on spaces)
7.join with spaces

8.return string
9.
10.



=end

def cleanup(str)
  alpha = ("a".."z").to_a
  new_string = ""
  str.chars.each do |char|
    if alpha.include? (char.downcase)
      new_string << char
    else
      new_string << " " unless new_string[-1] == " "
    end

  end 
  new_string
end

p cleanup("---what's my +*& line?") == ' what s my line '