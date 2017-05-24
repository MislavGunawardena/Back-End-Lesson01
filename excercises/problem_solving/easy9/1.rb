# Method name: greetings
# Arguments: An array, containing the person's names, names
#            A hash, containing :title and :occupation, details
#
# Side effects: None
# Return values: A string, a greeting that uses the persons full name and title. 
# 
# Algorithm;
# Initialize variables full_name, title, and occupation.
# Use string interpolation to return the greeting.

def greetings(names, details)
  full_name = names.join(' ')
  title = details[:title]
  occupation = details[:occupation]
  
  "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

