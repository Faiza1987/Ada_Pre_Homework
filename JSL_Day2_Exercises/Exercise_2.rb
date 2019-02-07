#Prompt for a string. If the string is equal to green, print GO, otherwise, print STOP.

puts "Please enter a color: "
color = gets.chomp

color = color.downcase

if color == "green"
  puts "GO"
else
  puts "STOP"
end

