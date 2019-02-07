# Prompt for a number. If the number is greater than 70, print PASSING; otherwise, print NOT PASSING.

puts "Please enter a number: "
number = gets.to_i

if number > 70
  puts "PASSING"
else
  puts "NOT PASSING"
end
