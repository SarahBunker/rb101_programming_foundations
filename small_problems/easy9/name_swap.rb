=begin
in:string "first last_name"
out:string "last_name, first"

plot:
split into words
change order of words adding a comma
return new string

=end
def swap_name(str)
  str.split.insert(1,", ").reverse.join
  #name_a = str.split
  #name_a[-1] + ", " + name_a[0]
end

p swap_name('Joe Roberts') == 'Roberts, Joe'