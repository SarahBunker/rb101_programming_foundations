str = "Walk, don't run"

p (str.size) - (str.count(" "))

def multiply(int1, int2)
  int1*int2
end

p multiply(5, 3) #== 15

def square(int)
  multiply(int, int)
end

p square(5) == 25
p square(-8) == 64

def xor?(op1, op2)
  return true if op1 && !op2 || op2 && !op1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false