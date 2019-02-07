student_names = Array.new(24, "Student") # creates an array with indexes (0-23) for 24 elements and with "Student" as the default value of each index.

student_names << "Test" # pushes Test to index 24 -> a new index will be created in the array
student_names << "Grumpy Cat" # pushes Grumpy Cat to index 25

puts student_names[1] # Student
puts student_names[25] # Grumpy Cat