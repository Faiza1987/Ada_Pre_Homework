# Prompt for a number. If the number is even, print EVEN, otherwise, print ODD.

puts "Please enter a number: "
number = gets.to_i

if number % 2 == 0
  puts "EVEN"
else
  puts "ODD"
end
