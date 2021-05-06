def palindrome?(item)
  item == item.reverse
end

def palindromic_number?(int)
  puts int
  puts int.to_s
  palindrome?(int.to_s)
end

#p palindromic_number?(34543) == true
#p palindromic_number?(123210) == false
#p palindromic_number?(22) == true
#p palindromic_number?(5) == true

p palindromic_number?(01510)
#has a problem with this because leading zeros mean octal system