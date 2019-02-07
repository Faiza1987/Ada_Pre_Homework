# Write a program that allows a user to enter the number of petals on a flower. Then one by one, print “plucking petal #1: they love me!”. Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.

puts "Enter number of petals on a flower: "
petals = gets.chomp.to_i

count = 0

while count != petals do
  count += 1
  if count % 2 != 0 
    puts "plucking petal ##{count}: they love me!"
  else
    puts "plucking petal ##{count}: they love me not"
  end
end