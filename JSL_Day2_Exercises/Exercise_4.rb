# Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5

puts "Please enter a number: "
number = gets.to_i

if number % 5 == 0
  puts "MULTIPLE OF 5"
else
  puts "NOT A MULTIPLE OF 5"
end
