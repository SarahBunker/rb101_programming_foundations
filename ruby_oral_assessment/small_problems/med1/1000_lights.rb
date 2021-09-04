=begin
#------------------------------------------------------------------------------
PROBLEM: 1000 lights
toggle every switch
round one every light turned on
toggle every 2 switch
round two every other light is turned of
toggle every 3rd switch

input: number of switches
output: array where elements represent the lights that are on
rules:
    Explicit requirements:
      
    Implicit requirements:
      light numbering starts at 1
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

p toggle_lights(5)  == [1,4]
p toggle_lights(10) == [1,4,9]

#------------------------------------------------------------------------------
DATA STRUCTURE
store lights in an array
1 represents on
0 represnets off
indices represent light number -1  => light number = index +1

#------------------------------------------------------------------------------
ALGORITHM
example:

def toggle one method (integer)
  if 0 return 1
  if 1 return 0
  return integer
end

def toggle_all method (array)
- outer iteration: iterating 1..num of lights
- where the number represents the spacing between toggles

- inner iteration: through each element of array
- toggle_one if matches spacing between toggles
- 
- now have array of 1,0s
  return array
end

def toggle_lights (integer)
- intialize array representing the light switches with 0's
- lights = toggle_all(array of zeros, integer)

- iteration over lights with index and if element is 1 store index in new array
- return new array
=end

def toggle_1(integer)
  integer == 1 ? 0 : 1
end

def toggle_nth!(array,nth)
  array.each_with_index do |light,i|
    array[i] = toggle_1(light) if (i+1) % nth == 0
  end
end

def toggle_all!(array)
  num_lights = array.size

  num_lights.times do |nth|
    toggle_nth!(array,nth+1)
  end
  
  array
end

def toggle_lights(num_lights)
  array_zeros = Array.new(num_lights,0)
  lights = toggle_all!(array_zeros)
  
  lights_on = []
  
  lights.each_with_index do |light, i|
    lights_on << i+1 if light == 1 
  end

  lights_on
end




p toggle_lights(5)  == [1,4]
p toggle_lights(10) == [1,4,9]

#----------
p toggle_1(1)               == 0
p toggle_1(0)               == 1

p toggle_nth!([1,1,1,1],2)   == [1,0,1,0]

p toggle_all!([0,0,0,0,0])  == [1,0,0,1,0]

