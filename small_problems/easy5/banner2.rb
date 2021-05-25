def print_in_box(message)
  #truncating message if to long
  message = message[0,76] if message.length > 76
  
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
  puts "length of box is #{horizontal_rule.length}"
end

print_in_box("Element Reference — Returns the element at index, or returns a subarray starting at the start index and continuing for length elements, or returns a subarray specified by range of indices.")

