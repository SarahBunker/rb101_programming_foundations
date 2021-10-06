=begin
#------------------------------------------------------------------------------
PROBLEM:
get the domain name from a string
input: string with website address
output: string with domain name
mutating? assuming can be
rules:
    Explicit requirements:
      
    Implicit requirements:
      assuming domain name comes after http:// or http://www. or www.
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"


p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
#------------------------------------------------------------------------------
DATA STRUCTURE




#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- 
- remove the begining characters
  if string includes http://www. remove 11 characters
  if string includes http://            7
  if string includes www.               4
  
- split on periods
- return first word
- 
- 
- 

=end
WEBSITE_STARTS = %w( www.")

def domain_name(string)
  if string.include?("https://www.")
    string = string[]
  elsif string.include?("http://www.")
    p "1"
  elsif string.include?("http://")
    p "1.5"
    
  elsif string.include?("https:")
    p "2"
  elsif string.include?("www.")
    p "3"
  end
  
end



p domain_name("http://github.com/carbonfive/raygun")  #== "github" 
p domain_name("http://www.zombie-bites.com")          #== "zombie-bites"
p domain_name("https://www.cnet.com")                 #== "cnet"
p domain_name("http://google.com")                    #== "google"
p domain_name("http://google.co.jp")                  #== "google"
p domain_name("www.xakep.ru")                         #== "xakep"
p domain_name("https://youtube.com")                  #== "youtube"

def domain_name(string)
  string.split(/\/\/|\./).select { |ele| !%w(http: https: www).any?(ele) }.first
  
end

# Option 2
def domain_name(url)
 ["https://", "http://", "www."].each {|str| url.sub!(str, '') }
 url.split(".").first
end