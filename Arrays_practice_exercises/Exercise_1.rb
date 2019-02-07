# Create an array to store 5 names. Have the user enter in the 5 names and then print out the 5 names in all UPPERCASE all on the same line. Note that the user may not enter all the names in uppercase.

# create an empty array
names = []

# create a loop to prompt user for name
# save name to a variable
# push the variable with value of name to names array

i = 1
while names.length < 5 do
  puts "Please enter name ##{i}:"
  name = gets.chomp.upcase
  names << name
  i += 1
end

#print names
puts ""
names.each do |name|
  print "#{name} "
end
