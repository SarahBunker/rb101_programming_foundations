def greetings(array, hsh)
  name = array.join(" ")
  title_name = "#{hsh[:title]} #{hsh[:occupation]}"
  puts "Hello #{name}. How long have you been a #{title_name}?"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
