MAX_COLUMN_LENGTH = 40
MAX_TEXT_LENGTH = MAX_COLUMN_LENGTH - 4

def print_message(length_column,array)
  array.each {|message| puts "| #{message} |"}
    
end

def print_in_box(message)
  #truncating message if to long
  message_a = []
  length_of_text_box = MAX_TEXT_LENGTH
  if message.length <= MAX_TEXT_LENGTH
    message_a << message
    length_of_text_box = message.length
  else
    loop do
      message_a << message.slice!(0...MAX_TEXT_LENGTH)
      break if message.length < MAX_TEXT_LENGTH
    end
    if message.length > 0
      puts "last line is #{message.length}"
      left_padding = MAX_TEXT_LENGTH-message.length
      left_padding.times { message << " " }
      message_a << message
    end
  end
  
  horizontal_rule = "+#{'-' * (length_of_text_box + 2)}+"
  empty_line = "|#{' ' * (length_of_text_box + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  print_message(length_of_text_box,message_a)
  puts empty_line
  puts horizontal_rule
  puts "length of box is #{horizontal_rule.length}"
end

print_in_box("Element Reference — Returns the element at index, or returns a subarray starting at the start index")

print_in_box("Element Reference — Returns the element at index, or returns a subarray starting at the start index and continuing for length elements, or returns a subarray specified by range of indices.1234567890123456789012345678901234567890")

print_in_box("Hello World")

print_in_box("To be or not to be. That is the question. Whether tis nobler in the mind to suffer the slings and arrows of outrageous fortune, or to take arms against a sea of troubles and by opposing them.")

