=begin
Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good
in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients
(also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity
there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200).
Ingredients that are not present in the objects, can be considered as 0.

In: 2 objects
  1st object is a recipe
  2nd object is amount of eact ingrediant he has, can have extra ingrediants
  
  objects are hashes
  
out: integer representing the maximum number of cakes

Problem: for a given recipe and given amounts of ingrediants find the number of cakes you can make

Examples:

// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 

Data:
two hashes come in
intermediary, store number of times recipe goes into ingrediants as array
integer goes out

keys are stored as strings
values are stored as integers

Algorythim:
create cakes method
  initizize empty array to store amount of times you could make the recipe for each ingrediant
  iterate through recipe hash
    access amount of matching ingrediant avaible
      return zero if ingrediant is not avaible
    find amount of times you could make the recipe for that ingrediant
    store in array
  return minimum of array storing # of times you could make the recipe for each ingrediant
=end

def cakes(recipe, pantry)
  max_cake_per_ingrediant = []
  
  num_cakes
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1