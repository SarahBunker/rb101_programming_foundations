def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

=begin
from the ruby documentation I found that you have to group default args together but they can be anywhere in the list of arguements
so this will not produce an error.
my guess is that it will be 4 5 3 6

yes, it was 4536




Where to find the answers?
go to calling methods doc under files
doc/syntax/calling_methods.rdoc
=end