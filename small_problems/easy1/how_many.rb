vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  vehicle_hash = {}
  vehicles.each do |type|
    if !vehicle_hash.include?(type)
      vehicle_hash[type] = 1
    else
      vehicle_hash[type] += 1
    end
  end
  vehicle_hash.each { |type, number| puts "#{type} => #{number}" }
end

count_occurrences(vehicles)
