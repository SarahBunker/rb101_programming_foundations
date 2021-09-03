=begin
#------------------------------------------------------------------------------
PROBLEM:
print text surrounded by a box
input: string
output: string printed within a box
rules:
    Explicit requirements:
      assume input will fit in terminal window
    Implicit requirements:
      box shrinks and expands based on length of string
      there is always only one space between the string and the sides of the wall.
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

define method
- determine as save length of string
- first line and last line are strings with + on the ends and - for the filling
- the next and next to last lines are strings with | on the ends and ' ' for the filling
- the middle line has the string centered with a space on either side and | on the ends
- create each of these lines to print
- 
- 
- 

=end
PADDING = 0

#------No care for size--------
#def print_in_box(string)
#  size = string.size + PADDING
#  horizontal = "+#{"".center(size,"-")}+"
#  empty = "|#{"".center(size," ")}|"

#  text = "|#{string.center(size," ")}|"
#  
#  puts horizontal
#  puts empty
#  puts text
#  puts empty
#  puts horizontal
#end


# ----wraps text, but splits words ------
#def print_in_box(string)
#  size = string.size + PADDING
#  size = 78 if size > 78
#  horizontal = "+#{"".center(size,"-")}+"
#  empty = "|#{"".center(size," ")}|"
#  
#  string_arry = []
#  
#  loop do
#    if string == nil || string.size <= 76
#      string_arry << string
#      string = ""
#    else
#      string_arry << string[0,76]
#      string = string[76..-1]
#    end
#    break if string == nil || string.size == 0
#  end
#  
#  puts horizontal
#  puts empty
#  string_arry.each {|text| puts "|#{text.center(size," ")}|"}
#  puts empty
#  puts horizontal
#end

def get_string_array(string)
  new_array = []
  new_string = " "
  #index = 0
  string.split.each do |word|
    if new_string.size + word.size + 1 > 76
      #index += 1
      new_array << new_string
      new_string = " "
    else
      
    end
    new_string << word << " "
    p new_string
  end
  new_array
end

def print_in_box(string)
  size = string.size + PADDING
  size = 78 if size > 78
  horizontal = "+#{"".center(size,"-")}+"
  empty = "|#{"".center(size," ")}|"
  
  string_arry = get_string_array(string)
  
  puts horizontal
  puts empty
  string_arry.each {|text| puts "|#{text.center(size," ")}|"}
  puts empty
  puts horizontal
end


p get_string_array("Hello")

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("You can say any foolish thing to a dog, and the dog will give you a look that says, 'Wow, you're right! I never would've thought of that'")