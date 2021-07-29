require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  binding.pry # execution will stop here
  break if counter == 5
end

=begin
bug: human error
debugging: finding and fixing error
what is the problem, understand error, fix error
Error
  syntax
    \  this is the escape character
    
  logical
    this type of error normally doesn't throw an error but gives the wrong result
    this is usually what debugging is for

.class  returns what class a variable is
exit! [enter] another way to exit the programming during binding.pry

what is pry?
ruby gem
  gem install pry
  also a REPL, read evaulate print loop
  
eval >> evaluates strings as ruby code

how to use pry
type pry to enter pry
in pry you can change scope using cd
ls lists commands availible to obj
show-doc map
this would tell you more about map and give some examples
cd .. would return you back to main scope
cd -  would return you to the last scope
cd / would return you to the main scope

Using binding.pry
  binding creates a reference to variables that were in scope when it was created
  binding.pry lets us open up that binding to access those references
    scope is important when deciding placement
      ~the binding has access to variables on its scope that are defined below it
        but it won't have access to those values
      ~variables defined outside of the method won't be accessible to a binding inside
        the method
    placing a binding at the end of the method can affect output (ex at the end of a map block
      will fill array with nils)
  if binding.pry is invoked in a loop then each loop will have dif. states of the  variables bound
  whereamI is a method that is called when binding.pry is invoked
    by default it shows 5 lines above and 5 lines below
      you can pass an arguement and it will show that value above and below
    it can also be called at any time within pry environment
    
Debugging pry
  great for looping debugging
  
  pry byebug that allows you to step through code

Stepping through and into code
  pry-byebug
  extends pry with some additional commands
    next: runs the next line of code and allows you to check values at that point
    step: step into method instead of stepping over it.
    continue: move to the next itteration without going through each line
  similar gems such as pry-nav and pry-debugger
  
  require "pry"
  require "pry-byebug"  << install same way you install pry
  
  ... code...
  binding.pry
  ... code ..
  
  
=end