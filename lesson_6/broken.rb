require "pry"

def shuffle_if(arr)
  if arr.length > 10
    arr.shuffle! # shuffles in place
  end
end

arr = (1..10).to_a # creates a basic array
binding.pry
arr = shuffle_if(arr) # re-assigns arr to it's shuffled self?
puts arr.last
