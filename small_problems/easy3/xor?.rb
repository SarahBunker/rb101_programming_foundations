def xor?(arg1,arg2)
  arg1 && !arg2 || arg2 && !arg1
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
puts ""
puts xor?(true,false)
puts xor?(true,true)
puts xor?(false,true)
puts xor?(false,false)
puts ""
puts xor?(4, 4.odd?)

=begin
They suggest using !! to force it to return a boolean,
I don't think I have problems with it not returning a boolean


=end